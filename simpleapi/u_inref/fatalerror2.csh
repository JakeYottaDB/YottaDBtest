#!/usr/local/bin/tcsh -f
#################################################################
#								#
# Copyright (c) 2018 YottaDB LLC. and/or its subsidiaries.	#
# All rights reserved.						#
#								#
#	This source code contains the intellectual property	#
#	of its copyright holder(s), and is made available	#
#	under a license.  If you do not know the terms of	#
#	the license, please stop and do not read further.	#
#								#
#################################################################
#
echo "# Test of FATALERROR2 error"
#

echo "Copy all C programs that need to be tested"
cp $gtm_tst/$tst/inref/fatalerror.c .

echo "# Create database for TP transaction"
$gtm_tst/com/dbcreate.csh mumps 1

set syslog_time1 = `date +"%b %e %H:%M:%S"`

foreach file (fatalerror.c)
	echo " --> Running $file <---"
	set exefile = $file:r
	$gt_cc_compiler $gtt_cc_shl_options -I$gtm_tst/com -I$gtm_dist $file
	$gt_ld_linker $gt_ld_option_output $exefile $gt_ld_options_common $exefile.o $gt_ld_sysrtns $ci_ldpath$gtm_dist -L$gtm_dist $tst_ld_yottadb $gt_ld_syslibs >& $exefile.map
	if (0 != $status) then
		echo "FATALERROR2-E-LINKFAIL : Linking $exefile failed. See $exefile.map for details"
		continue
	endif

	echo "# Set vmemoryuse limit to 200Mb; Eventually triggers YDB-F-MEMORY (and in turn FATALERROR2 error in syslog)"
	limit vmemoryuse 200000
	echo "# unsetenv gtmdbglvl (needed for FATALERROR2)"
	unsetenv gtmdbglvl

	`pwd`/$exefile
	echo ""
end

echo "# Reset vmemoryuse back to unlimited to avoid memory errors in the getoper.csh call (or dbcheck.csh) below"
limit vmemoryuse unlimited

$gtm_tst/com/getoper.csh "$syslog_time1" "" syslog1.txt "" "FATALERROR2"
$grep FATALERROR2 syslog1.txt | sed 's/.*%YDB/%YDB/;s/ Error:.*//;'
# Unlike the FATALERROR1 case, we do not expect a core file in the FATALERROR2 case.
# But we do not need to do any checks for this. The test framework will automatically fail the test if it finds a core file.
if (-e YDB_FATAL_ERROR*) then
	set ferrfile = YDB_FATAL_ERROR*
	mv $ferrfile fatalerror1_$ferrfile
else
	echo "FATALERROR1-E-NOFATALERRFILE : YDB_FATAL_ERROR_* file expected but not found after FATALERROR1 error"
endif

$gtm_tst/com/dbcheck.csh
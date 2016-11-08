#!/bin/sh

logdir=./
while :
do
  rm -f tmp.log
  logfile=$logdir/lftp.`/bin/date +%y%m%d_%H%M%S`.log
  touch $logfile
  echo "Script starting on "`date` >> $logfile
  lftp sftp://misumi:@inx1 >> $logfile 2>&1 << EOF
    mirror --parallel=2 -v --log=tmp.log /wrk/misumi/roms_out/ /Volumes/data/roms_out
EOF
  cat tmp.log >> $logfile
  rm -f tmp.log
  
  echo "Script ending on "`date` >> $logfile
  sleep 7200
done

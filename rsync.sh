#!/bin/sh

logfile=rsync.`/bin/date +%y%m%d_%H%M%S`.log

{
  echo "Script starting on "`date`
  rsync -av /data36/misumi/archive/ /data38/misumi/ccsm
  echo "Script ending on "`date`
} >> "$logfile" 2>&1


#!/bin/sh
# http://tech.nitoyon.com/ja/blog/2013/03/26/rsync-include-exclude/ 

logfile=rsync.`/bin/date +%y%m%d_%H%M%S`.log

{
  echo "Script starting on "`date`
  rsync -av --include="*sta*.nc" --exclude="*" /share/data38/gtucmt/2016/smD2Kfull/result/  tide0
  rsync -av --include="*sta*.nc" --exclude="*" /share/data38/gtucmt/2016c/smD2Kfull/result/ tide1Hidaka
  echo "Script ending on "`date`
} >> "$logfile" 2>&1

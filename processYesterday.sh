previousday=`echo "$(date -d "yesterday 13:00" '+%Y%m%d')"`
bash processDaySpecific.sh ${previousday} finalize

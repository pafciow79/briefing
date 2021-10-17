echo "Running processing on $(date '+%d/%m/%Y %H:%M:%S')"
today=`echo "$(date '+%Y%m%d')"`
bash processDaySpecific.sh ${today}

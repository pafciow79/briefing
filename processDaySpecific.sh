day=$1
mode=$2
framesdir="../keyframes"
workdir="../xiaomi_camera_videos/607ea43ed805"
briefingdir="../briefing"

echo "$(date '+%Y.%m.%d %H:%M:%S') Running processing of '${day}' in mode '${mode}' "

mkdir ${framesdir}/${day}
bash extractKeyFramesFromDay.sh ${workdir} ${day} ${framesdir}
if [ "${mode}" == "finalize" ]; then
	echo "finalize mode - making movie"
	bash makeMovie.sh ${framesdir}/${day} ${briefingdir}/${day}.mkv
	#rm -r ${framesdir}/${day}
fi

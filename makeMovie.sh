indir=$1
outfile=$2
tempfile=${outfile}-wip
mencoder mf://${indir}/*.jpg -mf fps=60:type=jpg -ovc x264 -x264encopts bitrate=2400:threads=2 -o ${tempfile}
mv ${tempfile} ${outfile}


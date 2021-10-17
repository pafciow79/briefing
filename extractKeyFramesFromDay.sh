#!/bin/bash
workdir=$1
day=$2
outdir=$3

len=`expr length "${workdir}"`
pos=$((len+2))

for path in `find ${workdir}/${day}* -type f | sort`;
do
	file=`echo ${path} | cut -c ${pos}-`
	bash extractKeyFramesFromFile.sh ${workdir} ${file} ${outdir}/${day}
done;

#!/bin/bash
workdir=$1
infile=$2
outdir=$3
outfile=`echo "${infile}" | cut -c1-10,12,13`
outpath="${outdir}/${outfile}"
outpathlast="${outpath}-10.jpg"
outpathfirst="${outpath}-01.jpg"
if [ ! -f "${outpathlast}" ]; then
        if [ -f "${outpathfirst}" ]; then
                echo "Found inconsistency, last file '${outpathlast}' does not exist, while first file '${outpathfirst}' does exist"
        fi

        ffmpeg -i ${workdir}/${infile} -vf select='eq(pict_type\,I)' -threads 2 -vsync 2 -s 1280x720 -f image2 ${outpath}-%02d.jpg
else
        echo "Skipping ${infile}, as already exists ${outpathlast}"
fi


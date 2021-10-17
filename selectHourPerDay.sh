#!/bin/bash
filter=$1
dir="../filtered-${filter}"
mkdir ${dir}
cp ../keyframes/*/*${filter}-01.jpg ${dir}


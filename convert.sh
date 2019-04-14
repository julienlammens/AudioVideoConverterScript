#! /bin/bash

# usage: ./convert.sh srcFormat destFormat srcFolder destFolder
srcFormat=$1
destFormat=$2
srcDir=$3
destDir=$4
options=""

function convert_files() {
	echo "************* Start ing convertion! *************"
	for filename in "$srcDir"/*.$srcFormat; do
		basePath=${filename%.*}
		baseName=${basePath##*/}
		echo "Converting $filename"
		ffmpeg -i "$filename" $options -f "$destFormat" "$destDir"/"$baseName"."$destFormat"
	done
	echo "************* Conversion finished! *************"
}

if [ $destFormat ==  "mov" ]
then
	options="-c:v dnxhd -c:a pcm_s16le -s -b:v 75M -pix_fmt yuv422p"
	convert_files
else
	echo "Destination format not supported yet..."
fi

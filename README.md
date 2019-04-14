# Audio Video Converter Script
Simply converts all files in a folder to another video or audio format, using ffmpeg.

## Usage:
You can use this bash script to convert all files with a specific format to another format using this command:

`./convert.sh <SourceFormat> <DestinationFormat> <Dimensions> <SourceFolder> <DestinationFolder>`

Example: `./convert.sh mp4 mov 1920x1080 ./mp4 ./mov`

* `SourceFormat` allows to specify which particular files you want to convert. But you can put `*` if you want to convert all files. Just be careful to check if all files are video / audio files.
* `DestinationFormat` is the format you want to convert your files
* `Dimensions` specify the dimension you want to have
* `Sourcefolder` is the folder where all your files to convert are located
* `Destinationfolder` is the folder where you want your converted file to be (it can be the same folder)

**For now, it can only converts to .mov files.**

## Compatibility:
Currently, this script only works on Linux systems. [FFMPEG](https://ffmpeg.org/) must be installed.

Although a Windows version is planned, it is not yet developped.

@echo off
cd src
powershell Compress-Archive -Path * -DestinationPath "..\builds\whosh.zip"
cd ..
ren builds\whosh.zip whosh.mpack

@echo off

rem Define paths
set "src_path=src"
set "build_path=builds"
set "zip_file=%build_path%\whosh.zip"
set "mpack_file=%build_path%\whosh.mpack"

rem Check if mpack file exists in the build folder and delete if it does
if exist "%mpack_file%" (
    del "%mpack_file%"
)

rem Check if zip file exists in the build folder and delete if it does
if exist "%zip_file%" (
    del "%zip_file%"
)

rem Change directory to src
cd "%src_path%"

rem Create a new zip file named whosh.zip
powershell Compress-Archive -Path * -DestinationPath "..\%zip_file%"

rem Change directory back to the parent directory
cd ..

rem Rename whosh.zip to whosh.mpack
ren "%zip_file%" whosh.mpack

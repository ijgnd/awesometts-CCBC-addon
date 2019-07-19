@echo off
set ZIP=C:\PROGRA~1\7-Zip\7z.exe a -tzip -y -r
set REPO=awesometts
set VERSION=1.15.0

fsum -r -jm -md5 -d%REPO% * > checksum.md5
move checksum.md5 %REPO%/checksum.md5

quick_manifest.exe "Yet Another AwesomeTTS" "%REPO%" >%REPO%/manifest.json

REM %ZIP% %REPO%_20.zip *.py %REPO%/*

cd %REPO%
%ZIP% ../%REPO%_v%VERSION%_Anki21.ankiaddon *

%ZIP% ../%REPO%_v%VERSION%_CCBC.adze *
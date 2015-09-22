@echo off
setlocal
GitVersion /l console /exec buildMaven.bat
endlocal

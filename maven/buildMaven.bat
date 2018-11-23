@echo off
mvn -Drevision=%GitVersion_SemVer% clean package
endlocal

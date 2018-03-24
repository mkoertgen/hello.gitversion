@echo off
mvn mvn versions:set -DnewVersion=%GitVersion_SemVer% && mvn versions:commit && mvn package
endlocal

@echo off
mvn install -Dgitversion.semver=%GitVersion_SemVer%
endlocal

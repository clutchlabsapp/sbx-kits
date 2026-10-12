@echo off
if "%~1"=="" goto usage
if "%~2"=="" goto usage
if not "%~3"=="" goto usage

sbx run docker.io/sbx/pi-kit:latest --kit clutchlabsapp/pi-base:%~2 --kit-args-file pi.env --name pi-%~1 %~1
exit /b %errorlevel%

:usage
echo Usage: %~nx0 ^<folder name^> ^<version number^>
exit /b 1
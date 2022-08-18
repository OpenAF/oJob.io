@echo off
rem Author: Nuno Aguiar
rem Start a socks5 proxied (or not) clean Chrome instance
rem Usage: newChrome.bat localhost:1080

set TMPDIR=%TMP%\chrome

set HOSTPORT="%1"
set PROXYARG=
if defined HOSTPORT (
    if not "%HOSTPORT%" == """" (
    	set PROXYARG=--proxy-server="socks5://%HOSTPORT%"
    )
)

if exist "%TMPDIR%\Default\" (
   echo Deleting previous temporary user data...
   del /q %TMPDIR%
)

echo Starting (hit Ctrl-C or close Chrome to end)...
start /wait chrome.exe --user-data-dir="%TMPDIR%" %PROXYARG% 

if exist "%TMPDIR%\Default\" (
   echo Deleting previous user data...
   del /q %TMPDIR%
)
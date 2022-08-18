@echo off
rem Author: Nuno Aguiar
rem Start a socks5 proxied (or not) clean Chrome instance
rem Usage: newChrome.bat somename localhost:1080

set NAME="%1"
if "%NAME%" == """" (
    set NAME=default
)

set TMPDIR=%TMP%\chrome_%NAME%

set HOSTPORT="%2"
set PROXYARG=
if defined HOSTPORT (
    if not "%HOSTPORT%" == """" (
    	set PROXYARG=--proxy-server="socks5://%HOSTPORT%"
    )
)

if exist "%TMPDIR%\Default\" (
   if not exist "%TMPDIR%\lockfile" (
   	echo Deleting previous temporary user data for %NAME%...
   	del /q %TMPDIR%
   ) else (
  	echo Reusing user data for %NAME%
   )
)

echo Starting (hit Ctrl-C or close Chrome to end)...
"%LOCALAPPDATA%\Google\Chrome\Application\chrome.exe" --user-data-dir="%TMPDIR%" %PROXYARG% 

if exist "%TMPDIR%\Default\" (
   if not exist "%TMPDIR%\lockfile" (
   	echo Deleting previous user data for %NAME%...
   	del /q %TMPDIR%
   ) else (
  	echo User data for %NAME% still in use
   )
)
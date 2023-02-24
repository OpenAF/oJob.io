@echo off
rem Author: Nuno Aguiar
rem Start a socks5 proxied (or not) clean Chrome instance
rem Usage: newChrome.bat somename localhost:1080
rem
rem If "somename" is a folder (e.g. c:\test) it won't be deleted in the end (this can be reversed with "set NODELETE=yes" prior to execution)
rem

set NAME="%1"
if "%NAME%" == """" (
    set NAME=default
)

if "%NAME:~2,2%" == ":\" (
    set TMPDIR=%NAME%
    if "%NODELETE%" == "" (
        set _NODELETE=yes
    ) else (
        set _NODELETE=%NODELETE%
    )
) else (
    set TMPDIR=%TMP%\chrome_%NAME%
    if "%NODELETE%" == "" (
        set _NODELETE=no
    ) else (
        set _NODELETE=%NODELETE%
    )
)

set HOSTPORT="%2"
set PROXYARG=
if defined HOSTPORT (
    if not "%HOSTPORT%" == """" (
    	set PROXYARG=--proxy-server="socks5://%HOSTPORT%"
    )
)

if exist "%TMPDIR%\Default\" (
    if not exist "%TMPDIR%\lockfile" (
        if not "%_NODELETE%" == "yes" (
            echo Deleting previous temporary user data for %NAME%...
            del /q /s /f %TMPDIR%
        ) else (
            echo Reusing user data for %NAME%
        )
    ) else (
        echo Reusing user data for %NAME%
    )
)

echo Starting (close Chrome and hit Ctrl-C to end)...
start /wait chrome.exe --user-data-dir="%TMPDIR%" %PROXYARG% 

if exist "%TMPDIR%\Default\" (
    if not exist "%TMPDIR%\lockfile" (
        if not "%_NODELETE%" == "yes" (
            echo Deleting previous user data for %NAME%...
            del /q /s /f %TMPDIR%
        ) else (
            echo User data for %NAME% still in use
        )
    ) else (
        echo User data for %NAME% still in use
    )
)

set _NODELETE=
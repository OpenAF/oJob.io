@echo off

set WEB_PORT=8888
set SSH_PORT=22222
set NAME=hvscs
set WORKSPACE=%~dp0
set IMAGE=nmaguiar/hvscs
set SSH_PASS=Password1

rem ----------------

set _CMD=nothing
if "%1"=="start" ( goto start )
if "%1"=="stop"  ( goto stop )
if "%_CMD%"=="nothing" (
    goto start
) else
    echo.
    echo Please use "hvscs start" or "hvscs stop"
    echo.
    goto end
)

:start

echo Creating hVSCs network...
docker network create hvscs

echo Starting hVSCs server (ssh port %SSH_PORT%)...
docker run --rm -ti --init --env SSH_PASS=%SSH_PASS% -d -p 3000 -p %SSH_PORT%:22 --privileged -v %WORKSPACE%:/workspace:cached --network hvscs --name %NAME%_hvscs %IMAGE%

echo Starting nginx reverse proxy (port %WEB_PORT%)...
docker run --rm -ti -d -p %WEB_PORT%:80 --network %NAME% --name %NAME%_nginx openaf/oaf:nightly -c "$sh('sudo apk update && sudo apk add nginx && ojob ojob.io/docker/nginx url=http://%NAME%_%NAME%:3000 port=%WEB_PORT% websocket=true ssl=hvscs sslvalid=525600 && sudo mv nginx.conf /etc/nginx/nginx.conf  && sudo mv nginx.pem /etc/nginx.pem && sudo mv nginx.key /etc/nginx.key && echo --- && sudo nginx && tail -f /var/log/nginx/access.log').exec()"

echo.
echo Try to access https://127.0.0.1:%WEB_PORT%/?folder=/workspace in a couple of seconds...
echo Also, try to ssh like this: "ssh openvscode-server@127.0.0.1 -L 1080:127.0.0.1:1080" (use the password "%SSH_PASS%")
echo To end run: "hvscs stop"
echo.
goto end

:stop

echo Stopping nginx...
docker stop %NAME%_nginx
echo Stopping hVSCs...
docker stop %NAME%_hvscs
echo Deleting network...
docker network rm hvscs
echo Done.

:end

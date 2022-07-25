@echo off

set WEB_PORT=8888
set SSH_PORT=22222
set SOCKS_PORT=1080
set NAME=hvscs
set WORKSPACE=%~dp0
set IMAGE=nmaguiar/hvscs
set SSH_PASS=Password1

rem ----------------

set CMD="%1"
if defined CMD (
  if "%CMD%"==""start"" (
    goto _start 
  ) else (
    if "%CMD%"==""stop""  ( 
      goto _stop 
    ) else (
      if "%CMD%"=="""" (
        goto _start
      ) else (
        echo.
        echo -- Please use "hvscs start" or "hvscs stop"
        echo.
        goto _end
      ) 
    )
  )
) else (
  goto _start
)


:_start

echo -- Creating hVSCs network...
docker network create %NAME%

echo -- Starting hVSCs server (ssh port %SSH_PORT%)...
docker pull %IMAGE%
if defined WORKSPACE (
  set WKS=-v %WORKSPACE%:/workspace:cached
) else (
  set WKS= 
)
docker run --rm -ti --init --env SSH_PASS=%SSH_PASS% -d -p 3000 -p %SSH_PORT%:22 --privileged %WKS% --network %NAME% --name %NAME%_hvscs %IMAGE%

echo -- Starting nginx reverse proxy (port %WEB_PORT%)...
docker pull openaf/oaf:nightly
docker run --rm -ti -d -p %WEB_PORT%:80 --network %NAME% --name %NAME%_nginx openaf/oaf:nightly -c "$sh('sudo apk update && sudo apk add nginx && ojob ojob.io/docker/nginx url=http://%NAME%_%NAME%:3000 port=%WEB_PORT% websocket=true ssl=hvscs sslvalid=525600 && sudo mv nginx.conf /etc/nginx/nginx.conf  && sudo mv nginx.pem /etc/nginx.pem && sudo mv nginx.key /etc/nginx.key && echo --- && sudo nginx && tail -f /var/log/nginx/access.log').exec()"

echo.
echo -- Try to access https://127.0.0.1:%WEB_PORT%/?folder=/workspace in a couple of seconds (keep refreshing until you see a web page showing up)...
echo -- Also, try to ssh like this: "ssh -p %SSH_PORT% openvscode-server@127.0.0.1 -L %SOCKS_PORT%:127.0.0.1:1080" (use the password "%SSH_PASS%")
echo -- To end run: "hvscs.bat stop"
echo.
goto _end

:_stop

echo -- Stopping nginx...
docker stop %NAME%_nginx
echo -- Stopping hVSCs...
docker stop %NAME%_hvscs
echo -- Deleting network...
docker network rm %NAME%
echo -- Done.

:_end

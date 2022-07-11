FROM gitpod/openvscode-server

USER root
RUN apt-get update\
 && apt-get install -y curl vim iproute2 apt-utils uidmap fuse-overlayfs\
 && curl https://openaf.io/nightly/install.sh | sh\
 && curl https://get.docker.com | sh\
 && ojob ojob.io/docker/k3d\
 && ojob ojob.io/kube/getKubectl path=/usr/bin\
 && chmod u+x /usr/bin/kubectl\
 && usermod -aG docker openvscode-server

COPY ojob_gitpod0.sh /tmp/server0.sh
COPY ojob_gitpod.sh  /tmp/server.sh

RUN chsh --shell /bin/bash openvscode-server\
 && chsh --shell /bin/bash openvscode-server\
 && cd /home/openvscode-server\
 && mv /tmp/server.sh .server.sh\
 && mv /tmp/server0.sh .server0.sh\
 && chmod a+x .server0.sh\
 && chmod a+x .server.sh\
 && chown openvscode-server: .server0.sh\
 && chown openvscode-server: .server.sh

USER openvscode-server  
ENTRYPOINT /home/openvscode-server/.server.sh  

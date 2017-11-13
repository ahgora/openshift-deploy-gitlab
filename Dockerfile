FROM registry.gitlab.com/gitlab-examples/openshift-deploy:latest

MAINTAINER Helber Maciel Guerra <helber.guerra@ahgora.com.br>

RUN curl -L https://github.com/openshift/origin/releases/download/v3.6.1/openshift-origin-client-tools-v3.6.1-008f2d5-linux-64bit.tar.gz | tar zx && \
    mv openshift-origin-client-tools-v3.6.1-008f2d5-linux-64bit/oc /usr/bin/ && \
    rm -Rf openshift-origin-client-tools-v3.6.1-008f2d5-linux-64bit* && \
    oc version

ADD deploy /opt/kubernetes-deploy/deploy

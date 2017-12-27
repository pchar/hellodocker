FROM docker:dind

RUN apk update
RUN apk add go git make curl
RUN curl -L -o s2i.tar.gz https://github.com/openshift/source-to-image/releases/download/v1.1.8/source-to-image-v1.1.8-e3140d01-linux-386.tar.gz
RUN tar xvfz s2i.tar.gz
RUN mkdir bin
RUN mv s2i  sti bin/
RUN export PATH=$PWD/bin:$PATH



CMD ["printenv"]
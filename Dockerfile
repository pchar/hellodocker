FROM docker

RUN apk update
RUN apk add go git make curl
RUN curl -L -o s2i.tar.gz https://github.com/openshift/source-to-image/releases/download/v1.1.8/source-to-image-v1.1.8-e3140d01-linux-386.tar.gz
RUN tar xvfz s2i.tar.gz
RUN export PATH=$PWD:$PATH
RUN git clone https://github.com/pchar/s2i-java.git
RUN mkdir /app
WORKDIR /app
# copy over Gemfile and install bundle
ADD build_with_docker.sh /app/build_with_docker.sh




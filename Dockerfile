FROM docker:dind

RUN apk update
RUN apk add go git



CMD ["printenv"]
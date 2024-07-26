FROM docker:dind-rootless
USER root
RUN apk add --no-cache \
  bash sudo \
  && echo "rootless ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
  
USER rootless


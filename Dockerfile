# use a node base image
FROM node:7-onbuild

# set maintainer
LABEL maintainer "crudsinfotechng@gmail.com"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://3.19.31.134:8000 || exit 1

# tell docker what port to expose
EXPOSE 8000
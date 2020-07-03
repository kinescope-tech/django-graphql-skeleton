FROM nginx
LABEL maintainer="Maintainer Email <maintainer@email.com>"

COPY ./config/nginx.conf /etc/nginx/conf.d/default.conf

FROM node:alpine as build
WORKDIR /src
COPY ./package.json /src/
RUN npm install
COPY . /src/
RUN npm run build
RUN ls -la


FROM alpine:3.2
RUN mkdir /app
RUN echo "Install Bash for scripts"     && apk add --no-cache --virtual bash
RUN echo "Installing web server..." \
 && apk add --no-cache nginx \
 && mkdir /app/logs \
 && mkdir -p /var/lib/nginx /var/cache/nginx /var/tmp/nginx /var/log/nginx \
 && echo "Removing unused files..." \
 && apk del --force --purge alpine-keys apk-tools \
 && rm -rf /var/cache/apk /etc/apk /lib/apk
WORKDIR /app

EXPOSE 80
VOLUME /app/logs

COPY --from=build /src/index.html ./src/
COPY --from=build /src/dist ./src/dist
COPY --from=build /src/nginx.conf /app/nginx.conf
ENTRYPOINT nginx -c /app/nginx.conf


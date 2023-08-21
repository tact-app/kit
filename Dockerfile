# syntax=docker/dockerfile:latest

FROM node:18-alpine AS build

ARG token
ENV FONTAWESOME_TOKEN=${token}

WORKDIR /app

COPY . .
RUN npm ci --ignore-scripts --include=dev && npm run build


FROM nginx:mainline-alpine AS prod
LABEL author="Tact team <team@tact.run>"
LABEL org.opencontainers.image.source="https://github.com/tact-app/kit"
LABEL org.opencontainers.image.description="Tact UI kit."
LABEL org.opencontainers.image.licenses="AGPL-3.0-later"

ENV NGINX_PORT=3000

WORKDIR /usr/share/nginx/html

COPY --from=BUILD /app/storybook-static /usr/share/nginx/html

RUN cat <<EOF > /etc/nginx/conf.d/default.conf
server {
    listen       ${NGINX_PORT};
    server_name  localhost;

    location / {
        root   /usr/share/nginx/html;
        index  index.html index.htm;
    }

    error_page   500 502 503 504  /50x.html;
    location = /50x.html {
        root   /usr/share/nginx/html;
    }
}
EOF

EXPOSE ${NGINX_PORT}

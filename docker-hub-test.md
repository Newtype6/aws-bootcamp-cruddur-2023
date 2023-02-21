# Homework challenge

## From here:
https://hub.docker.com/_/nginx

### Dockerfile:

FROM nginx
COPY static-html-directory /usr/share/nginx/html

### Place this file in the same directory as your directory of content:

docker build -t some-content-nginx

### Start your container

docker run --name some-nginx -d some-content-nginx

### Exposing external port

docker run --name some-nginx -d -p 8080:80 some-content-nginx

Then you can hit http://localhost:8080 or http://host-ip:8080 in your browser.

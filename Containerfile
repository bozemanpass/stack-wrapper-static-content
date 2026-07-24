# This is a Debian-based image
FROM nginx:latest

RUN rm -rf /usr/share/nginx/html/*

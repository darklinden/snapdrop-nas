# Use the official NGINX image as the base image
FROM nginx:1.27-alpine3.21-perl

# Copy the contents of the local 'client' directory to the NGINX default web root directory
COPY ./client /usr/share/nginx/html

COPY ./docker/nginx.conf /etc/nginx/nginx.conf
COPY ./docker/nginx/default.conf /etc/nginx/conf.d/default.conf

# Expose port 80 to allow incoming HTTP traffic
EXPOSE 41816

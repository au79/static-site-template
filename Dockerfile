FROM nginx:1.21.1-alpine
COPY ./public /usr/share/nginx/html
EXPOSE 80

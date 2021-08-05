FROM nginx:1.21.1-alpine
ARG GITHUB_SHA
ARG GITHUB_REF
COPY ./public /usr/share/nginx/html
RUN echo 'function sha(){document.getElementById("github-sha").innerText = "'"${GITHUB_SHA}"'"}' \
    'function ref(){document.getElementById("github-ref").innerText = "'"${GITHUB_REF}"'"}' > /usr/share/nginx/html/github-vars.js
EXPOSE 80

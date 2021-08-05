FROM nginx:1.21.1-alpine
COPY ./public /usr/share/nginx/html
RUN echo 'function sha(){document.getElementById("github-sha").innerText = "'"${GITHUB_SHA}"'"}' > /usr/share/nginx/html/github-sha.js
EXPOSE 80

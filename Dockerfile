# Serve the static site with nginx
FROM nginx:1.25-alpine

# Clear default html and copy your site
RUN rm -rf /usr/share/nginx/html/*
COPY . /usr/share/nginx/html/

# Default nginx serves on 80; we’ll map 8081:80 when running
EXPOSE 80

FROM nginx:alpine

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf
# Copy the static HTML into the Nginx container
COPY index.html /usr/share/nginx/html/index.html

# Nginx listens on port 80
EXPOSE 80
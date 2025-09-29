# Use lightweight Nginx image
FROM nginx:alpine

# Remove default nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy all project HTML, CSS, JS, images into nginx web root
COPY . /usr/share/nginx/html/

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start nginx in foreground (default CMD from nginx:alpine)

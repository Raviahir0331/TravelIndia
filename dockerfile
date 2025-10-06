# Use the official nginx lightweight image
FROM nginx:stable-alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy all site files (HTML, CSS, JS, images) to nginx's web directory
COPY . /usr/share/nginx/html/

# Expose port 80 for web access
EXPOSE 80

# nginx is the default command in this image

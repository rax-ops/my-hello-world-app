# Use a lightweight Nginx image as the base
FROM nginx:alpine
# Copy the static HTML content into the Nginx default web directory
# The website content is in the parent directory relative to the Dockerfile
#COPY ./website /usr/share/nginx/html

COPY website/index.html /usr/share/nginx/html/index.html

# Expose port 80, the default HTTP port Nginx listens on
EXPOSE 80
# The default command of the Nginx image starts the web server
# No need to specify CMD here unless you want to override it

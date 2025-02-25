# Use the official Nginx base image
FROM nginx:latest

# Remove the default nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy the custom HTML file into the container
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
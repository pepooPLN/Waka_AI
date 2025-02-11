# Use nginx as base image
FROM nginx:alpine

# Create directory for assets
RUN mkdir -p /usr/share/nginx/html/assets

# Copy the static files to nginx html directory
COPY index.html /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets/
COPY style.css /usr/share/nginx/html/style.css
# Copy custom nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 8081
EXPOSE 8081

# Start nginx
CMD ["nginx", "-g", "daemon off;"] 
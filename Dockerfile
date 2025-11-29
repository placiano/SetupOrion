FROM nginx:alpine

# Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy Setup script as index.html (so it's served at root) and as Setup
COPY Setup /usr/share/nginx/html/index.html
COPY Setup /usr/share/nginx/html/Setup

# Copy SetupOrion script
COPY SetupOrion /usr/share/nginx/html/SetupOrion

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

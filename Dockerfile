FROM nginx:alpine

# Remove default nginx config and static assets
RUN rm -rf /usr/share/nginx/html/* /etc/nginx/conf.d/default.conf

# Copy custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy Setup and SetupOrion scripts
COPY Setup /usr/share/nginx/html/Setup
COPY SetupOrion /usr/share/nginx/html/SetupOrion

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

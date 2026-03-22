FROM nginx:alpine

# Copy your static files
COPY public/ /usr/share/nginx/html

# Create custom nginx config to listen on port 8080
RUN echo 'server { listen 8080; server_name localhost; location / { root /usr/share/nginx/html; index index.html; } }' > /etc/nginx/conf.d/default.conf

EXPOSE 8080

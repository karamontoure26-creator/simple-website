FROM node:18-alpine

WORKDIR /app

# Copy static files
COPY public/ /app/public

# Install serve
RUN npm install -g serve

# Run serve on port 8080
EXPOSE 8080

CMD ["serve", "-s", "public", "-l", "8080"]

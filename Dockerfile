# Stage 1: Production Stage
FROM nginx:alpine AS production

# Set working directory (optional, but good practice)
WORKDIR /usr/share/nginx/html

# Copy only the static files that rarely change first
COPY index.html ./
COPY images/ images/
COPY assets/css/ assets/css/
COPY assets/js/ assets/js/

# If Sass files change frequently, copy them last
COPY assets/sass/ assets/sass/

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]

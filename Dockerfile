# Stage 1: Production Stage
FROM nginx:alpine AS build

# Set working directory (optional, but good practice)
WORKDIR /usr/share/nginx/html

# Copy only the static files that rarely change first

COPY images/ images/
COPY assets/css/ assets/css/
COPY assets/js/ assets/js/
COPY assets/webfonts assets/webfonts/
COPY assets/sass/ assets/sass/
COPY index.html ./


# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
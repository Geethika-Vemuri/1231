FROM nginx:latest
# Copy HTML file into Nginx web server directory
COPY index.html /usr/share/nginx/html/
# Expose port 82 for the web server
EXPOSE 82
# Start Nginx automatically
CMD ["nginx", "-g", "daemon off;"]

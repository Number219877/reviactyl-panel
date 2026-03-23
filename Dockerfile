FROM ghcr.io/reviactyl/panel:latest

# Create the missing directory and set permissions
USER root
RUN mkdir -p /app/var && chown -R www-data:www-data /app/var

# Switch back to the default user if the image uses one (usually www-data or root)
EXPOSE 80

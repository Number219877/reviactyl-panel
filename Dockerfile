FROM ghcr.io/reviactyl/panel:latest

USER root
# Ensure the panel can write its own config
RUN mkdir -p /app/var && chown -R www-data:www-data /app/var

# This forces PHP to find the CA bundle in the container
ENV SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt
ENV SSL_CERT_DIR=/etc/ssl/certs

EXPOSE 80

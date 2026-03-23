FROM ghcr.io/reviactyl/panel:latest

USER root

# Alpine-compatible command to update certificates
RUN apk update && apk add --no-cache ca-certificates && update-ca-certificates

# Force the environment to recognize the certs
ENV SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt
ENV SSL_CERT_DIR=/etc/ssl/certs

# Ensure the app has permissions
RUN mkdir -p /app/var && chown -R www-data:www-data /app/var

EXPOSE 80

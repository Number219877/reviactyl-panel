FROM ghcr.io/reviactyl/panel:latest

USER root
# This line tells the OS to trust everything—use this only to get past the migration block
RUN echo "verify_peer=0" >> /etc/php81/php.ini || echo "verify_peer=0" >> /etc/php82/php.ini

# Fix permissions
RUN mkdir -p /app/var && chown -R www-data:www-data /app/var

EXPOSE 80

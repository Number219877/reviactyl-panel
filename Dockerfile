FROM ghcr.io/reviactyl/panel:latest

# Set required environment variables for the build
ENV APP_ENV=production
ENV APP_ENVIRONMENT_ONLY=true

# Render uses dynamic ports, but the panel defaults to 80
EXPOSE 80

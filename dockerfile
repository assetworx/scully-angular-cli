FROM trion/ng-cli:latest

# Set back to root user - or stuff
USER 0

# Update packages
RUN apt-get update -y

# Install packages related to Scully
RUN apt-get install -y \
      chromium \
      ca-certificates

# Set environment variables Scully needs
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true
ENV SCULLY_PUPPETEER_EXECUTABLE_PATH '/usr/bin/chromium-browser'
FROM trion/ng-cli:latest

# Set back to root user - or install will fail
USER 0

# Update packages
RUN apt-get update -y

# Install packages related to Scully
RUN apt-get install -y \
      chromium \
      ca-certificates

# Set user back to node
USER node

# Set environment variable Scully needs
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true
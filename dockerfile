FROM trion/ng-cli:latest

RUN apk add --no-cache \
      chromium \
      ca-certificates

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true
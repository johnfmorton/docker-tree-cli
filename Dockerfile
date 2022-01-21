ARG TAG=16-alpine
FROM node:$TAG

WORKDIR /app

# Install dependencies
RUN set -eux; \
    npm install -g tree-cli

# Default command
CMD ["/bin/sh", "tree"]

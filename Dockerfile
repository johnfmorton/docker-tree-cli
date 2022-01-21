ARG TAG=16-alpine
FROM node:$TAG

WORKDIR /app

# Install dependencies
RUN set -eux; \
    npm install -g tree-cli

# Default command, use "tree" to see the directory structure
CMD ["/usr/local/bin/tree"]

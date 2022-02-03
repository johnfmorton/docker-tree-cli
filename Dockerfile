ARG TAG=16-alpine
FROM node:$TAG

WORKDIR /app

# Install dependencies
RUN set -eux; \
    npm install -g tree-cli

# I could have used the /bin/sh shell to give user a prompt by default
# CMD ["/bin/sh"]
# But I prefer to use "tree" to see the directory structure
# and passing in -l 2 defaults to seeing the directory structure of the next level
CMD ["/usr/local/bin/tree", "-l", "2"]

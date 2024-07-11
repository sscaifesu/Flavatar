# Use node as the builder image
FROM node:lts-alpine3.20 AS builder

# Copy the vue-color-avatar file from the local directory to the /app directory inside the container
COPY . /app

# Change the working directory to /app
WORKDIR /app
RUN yarn install \
    && yarn cache clean \
    && yarn build

# Using nginx for production
FROM nginxinc/nginx-unprivileged:alpine3.19

# Showing that port 8080 can be published
EXPOSE 8080

# Copy html from previous stage
COPY --from=builder /app/dist /usr/share/nginx/html

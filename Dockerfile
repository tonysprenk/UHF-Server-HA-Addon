ARG BUILD_FROM=ghcr.io/home-assistant/amd64-base-debian:bookworm
FROM ${BUILD_FROM}

ENV LANG C.UTF-8

# Install dependencies
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip3 install uhf-server && \
    apt-get clean

# Create config directory
RUN mkdir -p /config

# Set working directory
WORKDIR /config

# Start uhf-server
CMD ["uhf-server", "-c", "/config/config.yaml"]

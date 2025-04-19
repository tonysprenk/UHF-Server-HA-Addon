ARG BUILD_FROM=ghcr.io/home-assistant/amd64-base-debian:bookworm
FROM ${BUILD_FROM}

ENV LANG C.UTF-8

# Install dependencies
#RUN apk add --no-cache python3 py3-pip

# Install uhf-server
RUN pip3 install uhf-server

# Create config directory
RUN mkdir -p /config/uhf_server

# Set working directory
WORKDIR /config/uhf_server

# Copy run script
COPY run.sh /run.sh
RUN chmod a+x /run.sh

# Start with custom settings
CMD ["/run.sh"]

ARG BUILD_FROM=ghcr.io/home-assistant/aarch64-base:3.23
FROM $BUILD_FROM

# Add env
ENV LANG C.UTF-8

# Setup base
RUN apk add --no-cache dnsmasq

# Copy data
COPY rootfs /

# Grant executable permissions to all scripts in the init directory
RUN chmod a+x /etc/cont-init.d/*

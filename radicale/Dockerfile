FROM ${BUILD_FROM:-ghcr.io/hassio-addons/base-python:17.0.0}

# hadolint ignore=DL3013,DL3018
RUN apk add --no-cache \
        nginx \
        apache2-utils \
    \
    && python3 -m pip install \
        --no-cache-dir \
        --upgrade \
        bcrypt \
        https://github.com/Kozea/Radicale/archive/master.tar.gz \
    \
    && rm -rf /etc/nginx

COPY rootfs /

LABEL \
    org.opencontainers.image.title="Home Assistant Add-on: Radicale CalDav & CardDav" \
    org.opencontainers.image.vendor="Krofek" \
    org.opencontainers.image.description="Simple Home Assistant Radicale add-on" \
    org.opencontainers.image.source="https://github.com/krofek/hass-apps/tree/main/radicale" \
    org.opencontainers.image.licenses="Apache License 2.0"

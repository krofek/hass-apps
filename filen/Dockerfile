FROM ghcr.io/home-assistant/base:3.23

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN curl -fsSL "https://bun.com/install" | bash
ENV PATH="${PATH}:~/.bun/bin"

COPY --from=filen/cli:latest /filen-cli /filen-cli

COPY rootfs /

LABEL \
        org.opencontainers.image.title="Home Assistant Add-on: Filen.io Storage" \
        org.opencontainers.image.description="Simple Home Assistant Filen add-on" \
        org.opencontainers.image.source="https://github.com/krofek/hass-apps/tree/main/filen" \
        org.opencontainers.image.licenses="Apache License 2.0"

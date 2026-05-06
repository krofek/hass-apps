FROM ghcr.io/hassio-addons/base-python:18.0.0

ENV REPO_DIR=/app/octoeverywhere
ENV VENV_DIR=/app/octoeverywhere-env

RUN apk add --no-cache \
    py3-virtualenv

COPY --from=octoeverywhere/octoeverywhere:latest /app /app

COPY rootfs /

WORKDIR ${REPO_DIR}

CMD ["octoeverywhere"]

LABEL \
    org.opencontainers.image.title="Home Assistant App: OctoEverywhere" \
    org.opencontainers.image.description="Simple OctoEverywhere integration for Home Assistant" \
    org.opencontainers.image.source="https://github.com/krofek/hass-apps/tree/main/octoeverywhere" \
    org.opencontainers.image.licenses="Apache License 2.0"

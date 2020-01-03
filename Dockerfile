FROM composer

RUN set -eux; \
  apk add --no-cache \
    rsync

RUN composer global require deployer/deployer; \
    composer global require deployer/recipes

ENV PATH="/tmp/vendor/bin:${PATH}"

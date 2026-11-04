

FROM ghcr.io/containerbase/base:14.65.0@sha256:6ca0cd0aac60fdf6d1499b9904187859adce1d304b79a72418375adc0408ae95


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh



FROM ghcr.io/containerbase/base:13.8.64@sha256:f5764aa4daac3f1003c6ad579dad894efb85db3fea79a748d7eae57bf0201f78


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh

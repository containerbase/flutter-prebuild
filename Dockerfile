

FROM ghcr.io/containerbase/base:13.8.67@sha256:1ac3399609b01ec22d38295a146fa322782af587e00b3be34563911ad7817096


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh

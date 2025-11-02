

FROM ghcr.io/containerbase/base:13.23.17@sha256:b7bedc98c46e80c2a753c1c5aa069d9696200bda607100b7ef9a522c76d578cc


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh

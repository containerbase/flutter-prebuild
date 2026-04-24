

FROM ghcr.io/containerbase/base:14.9.0@sha256:c353a9e1a66bbb93036fa063bac7816ef905911425f082939630e8cb4ee9f643


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh



FROM ghcr.io/containerbase/base:10.11.7@sha256:5055918e83c5fa5b9588c69280bbd9600b7769768218258e913c09da8961eaa3


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh

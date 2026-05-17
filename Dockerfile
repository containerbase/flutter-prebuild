

FROM ghcr.io/containerbase/base:14.10.14@sha256:43f7249ae179aee31b55e0ae4f068344d33845ba3400fe54743968498981e89c


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh



FROM ghcr.io/containerbase/base:11.11.14@sha256:b4e504d81e3ee708e66e7b1ab7d92c98714e871c55ff3be795e76779f0258675


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh

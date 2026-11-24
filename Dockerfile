

FROM ghcr.io/containerbase/base:14.68.5@sha256:66c54b7155f5d397f9e5a91341a4b8c1172ae1a1d47403017e57eada24686d07


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh

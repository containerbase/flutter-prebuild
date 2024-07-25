

FROM ghcr.io/containerbase/base:11.1.0@sha256:b8afd77f2618d55cd4bbd8a1e59849603f37668450736e7fa48008480ddc421b


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh

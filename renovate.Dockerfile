#-------------------------
# renovate rebuild trigger
# https://docs.flutter.dev/release/archive?tab=linux
#-------------------------

# makes lint happy
FROM scratch

# renovate: datasource=flutter-version depName=flutter
ENV FLUTTER_VERSION=3.41.1

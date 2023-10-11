# containerbase Flutter releases

[![build](https://github.com/containerbase/flutter-prebuild/actions/workflows/build.yml/badge.svg)](https://github.com/containerbase/flutter-prebuild/actions/workflows/build.yml?query=branch%3Amain)
![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/containerbase/flutter-prebuild)
![License: MIT](https://img.shields.io/github/license/containerbase/flutter-prebuild)

Prebuild Flutter releases used by [containerbase/base](https://github.com/containerbase/base).

## Local development

Build the image

```bash
docker build -t builder .
```

Test the image

```bash
docker run --rm -it -v ${PWD}/.cache:/cache -e DEBURG=true builder 3.0.2
```

`${PWD}/.cache` will contain packed releases after successful build.

Optional environment variables

| Name    | Description                   | Default   |
| ------- | ----------------------------- | --------- |
| `DEBUG` | Show verbose php build output | `<empty>` |

# containerbase Flutter releases

[![build](https://github.com/containerbase/flutter-prebuild/actions/workflows/build.yml/badge.svg)](https://github.com/containerbase/flutter-prebuild/actions/workflows/build.yml?query=branch%3Amain)
![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/containerbase/flutter-prebuild)
![License: MIT](https://img.shields.io/github/license/containerbase/flutter-prebuild)

Prebuild Flutter releases used by [containerbase/base](https://github.com/containerbase/base).

## Local development

`mise install` installs Node.js, pnpm, jactionlint, shellcheck, zizmor and the dependencies.

```bash
pnpm lint            # pnpm oxfmt-fix to fix the formatting
jactionlint          # the GitHub workflows
zizmor .github/      # security audit of the GitHub workflows
```

CI runs jactionlint and zizmor through mise in the `lint` job, and the commit hook runs them on staged workflow files.

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

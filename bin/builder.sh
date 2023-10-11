#!/bin/bash

set -e

# shellcheck source=/dev/null
#. /usr/local/containerbase/util.sh

# trim leading v
TOOL_VERSION=${1#v}

# shellcheck disable=SC1091

NAME=flutter
ARCH=$(uname -p)

if [[ "${DEBUG}" == "true" ]]; then
  set -x
fi

SEMVER_REGEX="^(0|[1-9][0-9]*)(\.(0|[1-9][0-9]*))(\.(0|[1-9][0-9]*))$"

function check_semver () {
  if [[ ! "${1}" =~ ${SEMVER_REGEX} ]]; then
    echo "Not a semver like version - aborting: ${1}" >&2
    exit 1
  fi
  export MAJOR=${BASH_REMATCH[1]}
  export MINOR=${BASH_REMATCH[3]}
  export PATCH=${BASH_REMATCH[5]}
}

check_semver "${TOOL_VERSION}"

echo "Building ${NAME} ${TOOL_VERSION} for ${ARCH}"

echo "------------------------"
echo "init repo"
versioned_tool_path="/opt/containerbase/tools/${NAME}/${TOOL_VERSION}"

git clone \
    --quiet \
    --filter=blob:none \
    --branch "stable" \
    https://github.com/flutter/flutter.git \
    "${versioned_tool_path}"

export PATH="${versioned_tool_path}/bin:${PATH}"
pushd "${versioned_tool_path}" > /dev/null

git reset --hard "${TOOL_VERSION}"

echo "------------------------"
echo "init flutter"
# based on
# https://github.com/flutter/flutter/blob/cd41fdd495f6944ecd3506c21e94c6567b073278/dev/bots/prepare_package.dart#L450

# build flutter
flutter --version > /dev/null

# print version
# TODO: validate?
flutter --version

# populate caches
flutter pub get --help > /dev/null
#flutter doctor
#flutter update-packages
#flutter precache

# cleanup
echo "------------------------"
echo "cleanup"
git clean -f -x -- '**/.packages' > /dev/null
git clean -f -x -- '**/.dart_tool/' > /dev/null
rm -rf /src/flutter/.pub-cache/git > /dev/null

# fix perms
echo "------------------------"
echo "fix perms"
chmod -R g+w .

popd > /dev/null

# create archive
echo "------------------------"
echo "create archive"
tar -cJf "/cache/${NAME}-${TOOL_VERSION}-${ARCH}.tar.xz" -C /opt/containerbase/tools/flutter "${TOOL_VERSION}"

# mkdir -p "/usr/local/${NAME}/${TOOL_VERSION}"
# tar -C "/usr/local/${NAME}/${TOOL_VERSION}" --strip 1 -xf "${file}"

# "/usr/local/${NAME}/${TOOL_VERSION}/bin/node" -v

# echo "Compressing ${NAME} ${TOOL_VERSION} for ${CODENAME}-${ARCH}"
# cp -f "${file}" "/cache/${NAME}-${TOOL_VERSION}-${CODENAME}-${ARCH}.tar.xz"

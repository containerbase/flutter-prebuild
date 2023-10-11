#!/bin/bash

set -e

mkdir -p /src /cache

git clone \
  -b stable \
  https://github.com/flutter/flutter.git \
  /src/flutter
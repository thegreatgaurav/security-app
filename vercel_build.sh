#!/usr/bin/env bash
set -euo pipefail

# Build Flutter web for Vercel (outputs to build/web)

FLUTTER_VERSION="${FLUTTER_VERSION:-stable}"

if [[ ! -d "flutter" ]]; then
  echo "Fetching Flutter SDK (${FLUTTER_VERSION})..."
  git clone --depth 1 --branch "${FLUTTER_VERSION}" https://github.com/flutter/flutter.git flutter
fi

export PATH="$PWD/flutter/bin:$PATH"

flutter --version

echo "Running flutter pub get..."
flutter pub get

echo "Building Flutter web..."
flutter build web --release


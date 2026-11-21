#!/usr/bin/env bash
# Gera o APK dentro de um container. Uso:  bash construir.sh
set -e
cd "$(dirname "$0")"
mkdir -p saida chave
docker build -t aprender-apk-builder .
docker run --rm \
  -v "$PWD":/projeto \
  -v "$PWD/chave":/root/.android \
  -v aprender-gradle:/root/.gradle \
  -v aprender-npm:/root/.npm \
  -e HOST_UID="$(id -u)" -e HOST_GID="$(id -g)" \
  aprender-apk-builder bash /projeto/docker/build-apk.sh
echo
echo "PRONTO! Versão $(tr -d '[:space:]' < VERSION)"
echo "APK em: $PWD/saida/aprender-a-ler-v$(tr -d '[:space:]' < VERSION).apk"

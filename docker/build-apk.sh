#!/usr/bin/env bash
# Roda DENTRO do container.
set -e
trap 'chown -R "$HOST_UID:$HOST_GID" /projeto/app /projeto/saida /projeto/chave 2>/dev/null || true' EXIT
cd /projeto/app
npm install
[ -d android ] || npx cap add android
npx cap sync android
cd android
chmod +x gradlew
./gradlew assembleDebug --no-daemon
mkdir -p /projeto/saida
cp app/build/outputs/apk/debug/app-debug.apk /projeto/saida/aprender-a-ler.apk

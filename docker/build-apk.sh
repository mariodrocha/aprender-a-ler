#!/usr/bin/env bash
# Roda DENTRO do container.
set -e
trap 'chown -R "$HOST_UID:$HOST_GID" /projeto/app /projeto/saida /projeto/chave 2>/dev/null || true' EXIT
VERSAO="$(tr -d '[:space:]' < /projeto/VERSION 2>/dev/null || echo 0.0.0)"
IFS=. read -r MA MI PA <<< "$VERSAO"
CODIGO=$((MA*10000+MI*100+PA))   # versionCode do Android: sempre sobe a cada versão
cd /projeto/app
npm install
[ -d android ] || npx cap add android
npx cap sync android
cd android
# grava a versão no app Android (aparece em Configurações > Apps e deixa o APK novo atualizar o antigo)
sed -i -E "s/versionCode [0-9]+/versionCode $CODIGO/; s/versionName \"[^\"]*\"/versionName \"$VERSAO\"/" app/build.gradle
chmod +x gradlew
./gradlew assembleDebug --no-daemon
mkdir -p /projeto/saida
cp app/build/outputs/apk/debug/app-debug.apk "/projeto/saida/aprender-a-ler-v$VERSAO.apk"
cp app/build/outputs/apk/debug/app-debug.apk /projeto/saida/aprender-a-ler.apk

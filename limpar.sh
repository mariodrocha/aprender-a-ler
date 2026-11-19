#!/usr/bin/env bash
# Apaga do Docker TUDO que este projeto criou (não mexe em nada de outras pessoas).
docker rmi aprender-apk-builder 2>/dev/null || true
docker volume rm aprender-gradle aprender-npm 2>/dev/null || true
echo "Docker limpo. Para apagar o resto, delete esta pasta (guarde antes: app/www, app/package.json, app/capacitor.config.json, chave/)."

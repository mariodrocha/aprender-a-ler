#!/usr/bin/env bash
# Cria uma nova versão do projeto: sobe o número, registra no CHANGELOG,
# faz o commit e cria a tag no git.
#
# Uso:  bash versionar.sh <patch|minor|major> "Resumo do que mudou"
#   patch = correção ou ajuste pequeno   (1.2.3 -> 1.2.4)
#   minor = lição ou recurso novo        (1.2.3 -> 1.3.0)
#   major = mudança grande               (1.2.3 -> 2.0.0)
#
# Rode DEPOIS de fazer as alterações (ex.: trocar o app/www/index.html).
set -e
cd "$(dirname "$0")"

uso() {
  echo 'Uso: bash versionar.sh <patch|minor|major> "Resumo do que mudou"'
  echo "  patch = correção ou ajuste pequeno   (1.2.3 -> 1.2.4)"
  echo "  minor = lição ou recurso novo        (1.2.3 -> 1.3.0)"
  echo "  major = mudança grande               (1.2.3 -> 2.0.0)"
  exit 1
}

tipo="$1"; resumo="$2"
[ -n "$tipo" ] && [ -n "$resumo" ] || uso
[ -f VERSION ] || { echo "ERRO: arquivo VERSION não encontrado."; exit 1; }
command -v git >/dev/null 2>&1 || { echo "ERRO: o git não está instalado."; exit 1; }
if ! git config user.name >/dev/null || ! git config user.email >/dev/null; then
  echo "ERRO: o git ainda não sabe quem é você. Rode uma vez:"
  echo '  git config --global user.name  "Seu Nome"'
  echo '  git config --global user.email "seu@email.com"'
  exit 1
fi

# confere ANTES de mexer em qualquer arquivo (evita deixar a versão pela metade)
for alvo in . app app/www VERSION CHANGELOG.md app/package.json app/www/index.html; do
  if [ ! -w "$alvo" ]; then
    echo "ERRO: sem permissão de escrita em: $PWD/$alvo"
    echo "Provavelmente o build foi rodado com sudo e deixou arquivos do root. Corrija com:"
    echo "  sudo chown -R \"\$USER\":\"\$USER\" \"$PWD\""
    exit 1
  fi
done

atual="$(tr -d '[:space:]' < VERSION)"
IFS=. read -r ma mi pa <<< "$atual"
case "$tipo" in
  major) ma=$((ma+1)); mi=0; pa=0 ;;
  minor) mi=$((mi+1)); pa=0 ;;
  patch) pa=$((pa+1)) ;;
  *) uso ;;
esac
nova="$ma.$mi.$pa"
data="$(date +%F)"

if git rev-parse -q --verify "refs/tags/v$nova" >/dev/null 2>&1; then
  echo "ERRO: a tag v$nova já existe."; exit 1
fi

# 1) número da versão em todos os lugares
echo "$nova" > VERSION
sed -i.bak -E "s/(\"version\": *\")[^\"]+(\")/\1$nova\2/" app/package.json
sed -i.bak -E "s/^var VERSAO=\"[^\"]*\";/var VERSAO=\"$nova\";/" app/www/index.html
rm -f app/package.json.bak app/www/index.html.bak

# 2) registro no CHANGELOG.md (a versão nova entra no topo)
tmp="$(mktemp)"
printf '\n## [%s] - %s\n\n- %s\n' "$nova" "$data" "$resumo" > "$tmp"
sed -i.bak "/<!-- NOVAS-VERSOES-AQUI -->/r $tmp" CHANGELOG.md
rm -f "$tmp" CHANGELOG.md.bak

# 3) git: commit + tag
if [ ! -d .git ]; then
  git init -q -b main 2>/dev/null || { git init -q && git checkout -q -b main; }
fi
git add -A
git commit -q -m "v$nova: $resumo"
git tag -a "v$nova" -m "Versão $nova: $resumo"

echo
echo "Versão $atual -> $nova criada (commit + tag v$nova)."
echo "Próximos passos:"
echo "  bash construir.sh                    # gera o APK desta versão"
echo "  git push origin main --follow-tags   # envia para o git"

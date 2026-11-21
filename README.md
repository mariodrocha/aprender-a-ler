# Aprender a Ler – build do APK via Docker

App Android de alfabetização (letras, sílabas, nomes, palavras, números e frases).
Descrição completa do projeto (objetivo, critérios pedagógicos, interface, ferramentas): veja [`PROJETO.md`](PROJETO.md).
Interface: `app/www/index.html` · Empacotado com Capacitor · Voz: motor de voz do Android (pt-BR).

## Comandos do dia a dia

| O que | Comando |
|---|---|
| Gerar o APK | `bash construir.sh` → `saida/aprender-a-ler-vX.Y.Z.apk` |
| Criar uma versão nova | `bash versionar.sh <patch\|minor\|major> "o que mudou"` |
| Limpar o Docker | `bash limpar.sh` |

## Versionamento

A versão fica no arquivo `VERSION` (ex.: `1.6.0`) e segue **MAJOR.MINOR.PATCH**:

- **patch**: correção ou ajuste pequeno (1.6.0 → 1.6.1)
- **minor**: lição ou recurso novo (1.6.0 → 1.7.0)
- **major**: mudança grande (1.6.0 → 2.0.0)

Fluxo para cada alteração:

1. Faça a mudança (por exemplo, troque o `app/www/index.html`).
2. `bash versionar.sh minor "Lição 8: cores"`. O script faz tudo sozinho:
   sobe o `VERSION`, atualiza `app/package.json` e a constante `VERSAO` do app,
   acrescenta a entrada no `CHANGELOG.md`, faz o **commit** e cria a **tag** `vX.Y.Z`.
3. `bash construir.sh` gera o APK dessa versão. O número aparece na tela inicial do app
   e no Android (versionName/versionCode), e o APK novo atualiza o antigo.
4. `git push origin main --follow-tags` envia para o git.

Para ver o histórico: `git log --oneline --decorate` e o `CHANGELOG.md`.
Para voltar a uma versão antiga: `git checkout v1.4.0` (e `git checkout main` para retornar).

## Enviar para o git (primeira vez)

Crie um repositório **vazio** no GitHub/GitLab (de preferência **privado**) e rode na pasta do projeto:

```
git remote add origin https://github.com/SEU-USUARIO/aprender-a-ler.git
git push -u origin main --follow-tags
```

Este projeto já vem com o histórico das versões 1.0.0 a 1.6.0 como commits e tags.
Os commits estão no nome "Claude"; para usar o seu, configure com
`git config --global user.name "Seu Nome"` e `git config --global user.email "seu@email.com"`
(vale para os commits novos).

## O que NÃO vai para o git (ver `.gitignore`)

- `chave/`: chave de assinatura do app. **Faça backup à parte, em local privado.**
  Com ela, o APK novo atualiza o antigo no celular sem desinstalar. Se perder, é preciso desinstalar o app antes.
- `saida/` (APKs), `app/node_modules/` e `app/android/`: são gerados pelo build.

## Estrutura

```
VERSION             versão atual
CHANGELOG.md        histórico do que mudou em cada versão
PROJETO.md          descrição do projeto (objetivo, pedagogia, interface, ferramentas)
versionar.sh        cria uma versão nova (número + changelog + commit + tag)
construir.sh        gera o APK (usa Docker)
limpar.sh           remove imagem e caches do Docker
Dockerfile          Node 20 + Java 17 + Android SDK
docker/build-apk.sh roda dentro do container
app/www/index.html  toda a interface e as lições
app/package.json    Capacitor e plugin de voz
```

Como adicionar uma lição: veja o comentário no topo do `<script>` do `app/www/index.html`.

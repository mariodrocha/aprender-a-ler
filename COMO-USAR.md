# Como usar: gerar o APK, versionar e enviar ao git

Guia de operação do projeto **Aprender a Ler**. A apresentação do projeto está no [`README.md`](README.md)
e a descrição completa em [`PROJETO.md`](PROJETO.md).

## Comandos do dia a dia

| O que | Comando |
|---|---|
| Gerar o APK | `bash construir.sh` → `saida/aprender-a-ler-vX.Y.Z.apk` |
| Criar uma versão nova | `bash versionar.sh <patch\|minor\|major> "o que mudou"` |
| Limpar o Docker | `bash limpar.sh` |

Se aparecer `permission denied` do Docker, use `sudo bash construir.sh` ou adicione o usuário ao grupo docker
(`sudo usermod -aG docker $USER` e reinicie a sessão).

## Gerar o APK

1. Instale o Docker e deixe-o em execução.
2. Na pasta do projeto: `bash construir.sh`.
3. Passe `saida/aprender-a-ler-vX.Y.Z.apk` para o celular e instale (permita "fontes desconhecidas").
4. **Guarde a pasta `chave/`**: ela mantém a assinatura do app. Com ela, o APK novo atualiza o antigo sem
   desinstalar. Se for usar o projeto em outra pasta, copie a `chave/` junto.

## Versionamento

A versão fica no arquivo `VERSION` e segue **MAJOR.MINOR.PATCH**:

- **patch**: correção ou ajuste pequeno (1.6.0 → 1.6.1)
- **minor**: lição ou recurso novo (1.6.0 → 1.7.0)
- **major**: mudança grande (1.6.0 → 2.0.0)

Fluxo para cada alteração:

1. Faça a mudança (por exemplo, troque o `app/www/index.html`).
2. `bash versionar.sh minor "Lição 8: cores"`. O script sobe o `VERSION`, atualiza `app/package.json` e a versão
   mostrada no app, acrescenta a entrada no `CHANGELOG.md`, faz o **commit** e cria a **tag** `vX.Y.Z`.
3. `bash construir.sh` gera o APK dessa versão. O número aparece na tela inicial do app e no Android.
4. `git push origin main --follow-tags` envia para o git.

Para ver o histórico: `git log --oneline --decorate` e o `CHANGELOG.md`.
Para voltar a uma versão antiga: `git checkout v1.4.0` (e `git checkout main` para retornar).

## Enviar para o git (primeira vez)

Crie um repositório **vazio** no GitHub ou GitLab (de preferência **privado**) e, na pasta do projeto:

```
git remote add origin git@github.com:SEU-USUARIO/aprender-a-ler.git
git push -u origin main --follow-tags
```

Se usar o endereço `https://` em vez de SSH, troque a URL acima. Os commits novos usam o nome configurado em
`git config --global user.name` e `git config --global user.email`.

## O que NÃO vai para o git (ver `.gitignore`)

- `chave/`: chave de assinatura do app. **Faça backup à parte, em local privado.**
- `saida/` (APKs), `app/node_modules/` e `app/android/`: são gerados pelo build.

Para conferir: `git check-ignore -v chave saida` mostra as regras, e `git status` não deve listar essas pastas.
Nunca use `git add -f chave`.

## Estrutura

```
README.md           apresentação do projeto (página inicial no GitHub)
PROJETO.md          descrição completa do projeto
COMO-USAR.md        este guia
CHANGELOG.md        o que mudou em cada versão
VERSION             versão atual
versionar.sh        cria uma versão nova (número + changelog + commit + tag)
construir.sh        gera o APK (usa Docker)
limpar.sh           remove imagem e caches do Docker
Dockerfile          Node 20 + Java 17 + Android SDK
docker/build-apk.sh roda dentro do container
app/www/index.html  interface e lições
app/package.json    Capacitor e plugin de voz
```

## Como adicionar uma lição

Veja o comentário no topo do `<script>` do `app/www/index.html`. Cada lição é um item da lista `LICOES`,
e cada tela é um dado.

# Histórico de alterações – Aprender a Ler

Versões no formato MAJOR.MINOR.PATCH:
**MAJOR** mudança grande · **MINOR** lição ou recurso novo · **PATCH** correção ou ajuste.
Para criar uma versão nova: `bash versionar.sh <patch|minor|major> "o que mudou"`.

<!-- NOVAS-VERSOES-AQUI -->

## [1.6.0] - 2026-11-21

- Controle de versão: arquivo `VERSION`, este `CHANGELOG.md` e o script `versionar.sh` (sobe o número, registra aqui, faz commit e cria a tag).
- A versão aparece na tela inicial do app e no Android (versionName/versionCode); o APK sai como `aprender-a-ler-vX.Y.Z.apk`.
- Repositório git com o histórico 1.0.0 a 1.5.1 (commits e tags); `.gitignore` deixa fora `chave/`, `saida/`, `node_modules/` e `app/android/`.
- README com o fluxo de versões e como enviar ao git.

## [1.5.1] - 2026-11-19

- Lição 3 (Meu nome) já vem com os 27 nomes da família; a lista continua editável (toque longo de 3 s no título).
- Lista de nomes aceita até 40 nomes.

## [1.5.0] - 2026-11-19

- Menu inicial compacto: cartões em 2 colunas, com "Lição N" e nome curto; velocidade da voz numa linha só.
- Cinco lições novas: Meu nome (com cadastro escondido), Formar palavras, Dia a dia, Números (dígitos, preços e horas) e Frases (com destaque palavra por palavra e textos conhecidos).
- Novos tipos de tela: juntar, cartao, nome e frase.

## [1.4.0] - 2026-11-19

- Corrige a mensagem "Este celular não tem voz instalada": o WebView do Android não tem `speechSynthesis`, então a voz passou a usar o plugin `@capacitor-community/text-to-speech` (motor de voz do próprio Android, sem internet).
- `build-apk.sh` passa a rodar `npm install` sempre, para instalar plugins novos.

## [1.3.0] - 2026-11-18

- Velocidade da voz ajustável (5 níveis, padrão 0,8).
- Botão "Devagar" repete a última fala em 60% da velocidade.
- Pronúncia de sílabas soltas melhorada (a → á, e → ê, o → ô); tabela `FONETICA` para ajustes.

## [1.2.0] - 2026-11-18

- Tela inicial com escolha de lições; as lições passam a ser dados (`LICOES`).
- Lição 2: sílabas (consoante + vogal) seguidas de palavras, 15 consoantes.
- Progresso por lição salvo no aparelho; botão Voltar do Android retorna ao início.

## [1.1.0] - 2026-11-18

- Corrige o layout das letras largas (M, W), que empurravam os botões para fora da tela.
- Teclado físico: letra, Enter, Espaço e setas.

## [1.0.0] - 2026-11-18

- Versão inicial: alfabeto A–Z com voz, build do APK via Docker + Capacitor.

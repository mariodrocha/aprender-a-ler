# Aprender a Ler

Aplicativo Android de alfabetização para **adultos e idosos que estão aprendendo a ler**, feito para ser usado
sozinho, no ritmo de cada pessoa, sem internet e sem pressão.

> Versão descrita neste documento: **1.6.x** (ver `VERSION` e `CHANGELOG.md`).

---

## 1. Objetivo

Ajudar uma pessoa idosa que não foi alfabetizada, ou que lê com muita dificuldade, a dar os primeiros passos na leitura:
reconhecer letras, juntar sílabas, ler palavras e frases curtas, e reconhecer **o que importa na vida dela** (o próprio nome,
o nome da família, placas, preços, horas do remédio, orações que já sabe de cor).

O projeto nasceu de um caso concreto: uma pessoa da família que quer aprender a ler e usa um celular Android
antigo. As decisões de conteúdo e de interface partem dessa pessoa, e não de um aluno "médio".

### O que o app **não** é
- Não é um jogo: não há pontos, fases, cronômetro, vidas nem ranking.
- Não avalia nem reprova: não existe resposta "errada" na tela.
- Não substitui um professor ou um programa de alfabetização de adultos; é um apoio para treinar entre as aulas ou em casa.
- Não usa internet, anúncios, conta de usuário nem coleta de dados.

---

## 2. Público-alvo

| | |
|---|---|
| **Quem** | Adultos e idosos em processo de alfabetização, falantes de português do Brasil |
| **Contexto** | Uso individual, em casa, com ou sem a ajuda de um familiar |
| **Aparelho** | Celular Android, inclusive modelos antigos e de tela pequena (layout verificado em larguras de 320 a 412 px) |
| **Quem prepara** | Um familiar instala o app e, se quiser, cadastra os nomes da família |

---

## 3. Critérios pedagógicos para ensinar idosos

Estes são os princípios adotados no projeto. Vêm da experiência da educação de jovens e adultos e de boas práticas de
acessibilidade; **não foram validados em estudo formal**. A validação real é o uso com a pessoa que vai aprender
(ver seção 12).

1. **Uma tela, uma coisa por vez.** Cada tela mostra um único conteúdo. Nada de menus, avisos ou itens concorrendo pela atenção.
2. **Sem pressão.** Nada de tempo, pontuação ou erro. O medo de errar é uma das maiores barreiras de quem começa tarde.
3. **Começar pelo que tem significado.** O próprio nome e o nome dos filhos e netos motivam mais do que "A de abelha".
   Por isso o nome ocupa a Lição 3, logo depois das sílabas.
4. **Do conhecido para o novo.** Letras → sílabas → palavras → frases. Palavras do dia a dia (FARMÁCIA, SAÍDA, PREÇO) e orações
   que a pessoa já sabe de cor, porque reconhecer o que já se conhece ajuda a ligar o som à escrita.
5. **Sempre som e imagem juntos.** Toda palavra vem com figura e voz; toda letra pode ser ouvida quantas vezes quiser.
6. **Ritmo do aluno.** A voz pode ser mais lenta e há um botão "Devagar" que repete a última fala em velocidade reduzida.
7. **Dificuldade crescente e escondida.** Sílabas simples (consoante + vogal) primeiro; LH, NH e RR só no fim da lição de palavras.
8. **Repetição sem cansar.** Telas curtas, navegação livre (voltar e avançar) e o app lembra onde a pessoa parou.
9. **Leitura da palavra inteira.** Nas placas do dia a dia, a voz lê a palavra toda, porque é assim que a pessoa a encontra na rua.
10. **Frases curtas.** No máximo 6 palavras por tela, com destaque de cada palavra enquanto a voz lê.
11. **Dignidade.** Conteúdo adulto no visual e no vocabulário (sem linguagem infantilizada), com figuras simples e claras.

---

## 4. Lições

São 7 lições e 207 telas no total.

| # | Lição | O que a pessoa faz | Telas |
|---|---|---|---|
| 1 | **Letras** | Vê a letra maiúscula e minúscula, a figura e a palavra; ouve o nome da letra | 26 |
| 2 | **Sílabas** | Toca em BA BE BI BO BU e ouve cada sílaba; depois lê palavras com aquela consoante (15 consoantes) | 71 |
| 3 | **Meu nome** | Vê o nome em letras gigantes; ouve soletrar, letra por letra com destaque, e o nome inteiro (27 nomes da família já cadastrados) | 27 |
| 4 | **Formar palavras** | Toca nas sílabas soltas (BO, LA) e em "Juntar" para ver e ouvir a palavra (BOLA) | 20 |
| 5 | **Dia a dia** | Lê palavras em quadros que lembram placas: MERCADO, FARMÁCIA, ÔNIBUS, SAÍDA, BANHEIRO | 10 |
| 6 | **Números** | Dígitos de 0 a 9, preços com a figura do produto ("R$ 5,00" → "cinco reais") e horas do remédio ("8:00" → "oito horas") | 22 |
| 7 | **Frases** | Lê frases curtas, Parabéns, Pai-Nosso e Ave-Maria, com destaque palavra por palavra | 31 |

### Cadastro dos nomes (Lição 3)
A lista de nomes vem pronta, mas pode ser editada. O cadastro fica **escondido de propósito**: segurar o título da lição
por 3 segundos abre um campo de texto (um nome por linha, até 40 nomes). Assim a pessoa que aprende não apaga os nomes sem querer.

---

## 5. Critérios de interface e acessibilidade

| Critério | Como foi feito |
|---|---|
| **Alvos de toque grandes** | Botões com 84 px de altura e fonte de 30 px (64 px e 56 px em telas baixas) |
| **Alto contraste** | Preto e branco com azul escuro; tema escuro automático (fundo preto, botões amarelos) |
| **Fonte legível** | Verdana, sem fontes decorativas; letras e números em tamanho muito grande |
| **Margens de segurança** | 24 px nas laterais, para o dedo não esbarrar na borda e acionar a tela errada |
| **Sem rolagem nas telas de estudo** | O tamanho das letras e figuras se ajusta à largura **e** à altura da tela; os botões ficam à vista em telas a partir de cerca de 568 px de altura (abaixo disso a tela pode rolar um pouco) |
| **Poucos botões, sempre no mesmo lugar** | Ouvir, Palavra, Devagar e Voltar/Próxima ficam na mesma posição em todas as lições |
| **Rótulos curtos e com ícone** | "🔊 Ouvir", "🐢 Devagar", "◀ Voltar", "Próxima ▶" |
| **Navegação previsível** | Botão "Início" em todas as telas; o botão Voltar do Android leva ao menu em vez de fechar o app |
| **Voz ajustável** | 5 velocidades (padrão 0,8, mais lenta que o normal) + botão "Devagar" |
| **Sem texto longo** | Instruções de uma linha; nenhuma tela exige ler um parágrafo |
| **Funciona sem internet** | Voz e conteúdo estão no aparelho |

---

## 6. Ferramentas e tecnologias

| Ferramenta | Para que serve |
|---|---|
| **HTML, CSS e JavaScript** (um único arquivo, `app/www/index.html`) | Toda a interface e o conteúdo das lições; sem bibliotecas externas, fácil de editar |
| **Capacitor 6** | Empacota a página web como aplicativo Android |
| **`@capacitor-community/text-to-speech` 5.1** | Faz o app falar usando o **motor de voz do próprio Android** (pt-BR), sem servidor e sem API paga |
| **Docker** (Node 20, Java 17, Android SDK 34) | Gera o APK sem instalar Java, Android SDK ou Node no computador |
| **Gradle** | Compila o APK dentro do container |
| **Git** e scripts bash (`versionar.sh`, `construir.sh`, `limpar.sh`) | Controle de versões e automação do build |
| **Playwright** (só no desenvolvimento) | Testes automáticos de layout em três tamanhos de tela e da lógica de voz com um motor simulado |

### Por que um plugin de voz?
O componente que exibe a página dentro do app Android (WebView) **não tem** a função de voz dos navegadores. Na versão 1.4.0 o app
passou a falar pelo plugin nativo; o navegador do computador continua usando a voz do navegador, o que serve para testar.

### Como o conteúdo é organizado
Cada lição é um item da lista `LICOES`; cada tela é um dado (`letra`, `silabas`, `palavra`, `juntar`, `cartao`, `nome`, `frase`).
Para criar uma lição nova basta acrescentar dados; as instruções estão no topo do `<script>` do `index.html`.

---

## 7. Estrutura do projeto

```
VERSION             versão atual
CHANGELOG.md        histórico do que mudou em cada versão
PROJETO.md          este documento
README.md           comandos do dia a dia
versionar.sh        cria uma versão nova (número + changelog + commit + tag)
construir.sh        gera o APK (usa Docker)
limpar.sh           remove imagem e caches do Docker
Dockerfile          Node 20 + Java 17 + Android SDK
docker/build-apk.sh roda dentro do container
app/www/index.html  interface e lições
app/package.json    Capacitor e plugin de voz
chave/              assinatura do app (NÃO vai para o git)
saida/              APKs gerados (NÃO vai para o git)
```

---

## 8. Como gerar e instalar o APK

1. Instalar o Docker e deixá-lo em execução.
2. Na pasta do projeto: `bash construir.sh` (ou `sudo bash construir.sh`).
3. O APK sai em `saida/aprender-a-ler-vX.Y.Z.apk`.
4. Passar o arquivo para o celular e instalar (permitir "fontes desconhecidas" quando o Android pedir).
5. **Guardar a pasta `chave/`**: ela mantém a assinatura do app. Sem ela, o APK novo não atualiza o antigo e é preciso desinstalar.

Requisito no celular: voz de **português (Brasil)** instalada (Configurações > Idioma > Saída de texto para voz).

---

## 9. Versionamento

Versões no formato **MAJOR.MINOR.PATCH** (patch = ajuste, minor = lição ou recurso novo, major = mudança grande).

```
bash versionar.sh minor "Lição 8: cores"
git push origin main --follow-tags
```

O script atualiza `VERSION`, `app/package.json` e a versão exibida no app, escreve no `CHANGELOG.md`, faz o commit e cria a tag.
O número também vai para o Android (versionName e versionCode), e o APK novo sempre atualiza o antigo.

---

## 10. Evolução da interface, passo a passo

| Versão | O que mudou na interface | Por quê |
|---|---|---|
| 1.0.0 | Tela única: letra, figura, palavra e botões de ouvir | Começar simples, com o essencial |
| 1.1.0 | Letras largas (M, W) passam a caber lado a lado; botões não saem mais da tela. Teclado físico. | O "M m" quebrava em duas linhas e empurrava os botões para baixo |
| 1.2.0 | Tela inicial com escolha de lição; progresso salvo; botão Voltar do Android volta ao menu | Preparar o app para várias lições |
| 1.3.0 | Velocidade da voz, botão "Devagar" e pronúncia melhor de sílabas soltas | Quem está começando precisa ouvir mais devagar e com clareza |
| 1.4.0 | Voz nativa do Android pelo plugin | O app instalado mostrava "não tem voz instalada" |
| 1.5.0 | Menu compacto em 2 colunas ("Lição 1 / Letras"); 5 lições novas | Os cartões grandes e com muito texto ocupavam demais um celular de tela pequena |
| 1.5.1 | 27 nomes da família já cadastrados | Escrever os nomes era uma dificuldade para ela |
| 1.6.0 | Versão do app visível no menu | Saber qual versão está instalada |

---

## 11. Privacidade e segurança

- O app **não precisa de internet** e **não envia nada**. Não há conta, anúncios nem rastreamento.
- O progresso, a velocidade da voz e os nomes ficam **só no aparelho** (armazenamento local do app).
- Não usa microfone, câmera, contatos nem localização.
- A pasta `chave/` (assinatura) e os APKs ficam fora do git por segurança.

---

## 12. Estado atual e limitações

- O layout foi verificado automaticamente nas 207 telas em três tamanhos de celular (320×568, 360×640 e 412×800).
- A **qualidade da voz depende do aparelho**: sílabas soltas ("be", "ce") podem soar estranhas em algumas vozes.
  Há uma tabela de correções (`FONETICA`) no código para ajustar caso a caso.
- **Ainda falta validar com a pessoa que vai aprender**: ritmo, tamanho das letras, quais lições motivam mais.
  Os resultados desse uso devem orientar as próximas versões.
- É um APK de depuração (instalação direta); a publicação na Play Store exigiria um APK de release assinado.
- As figuras são emojis e dependem da versão do Android; em aparelhos muito antigos alguns podem aparecer como quadrado.
- Os textos religiosos seguem a versão católica tradicional.

---

## 13. Próximos passos sugeridos

1. Testar com a pessoa e anotar dificuldades (qual tela travou, qual voz soou estranha).
2. Áudio gravado por familiares para letras, sílabas e nomes (a voz de quem ela conhece ajuda muito).
3. Atividades de prática sem erro: ouvir e escolher entre duas opções, com reforço positivo.
4. Lição de dígrafos e sílabas complexas (LH, NH, CH, BR, PL).
5. Traçar a letra com o dedo, com traço bem tolerante.
6. Modo do responsável (ocultar lições, zerar progresso, ajustar a voz).
7. Ícone e tela de abertura próprios; APK de release assinado.

---

## 14. Créditos e licenças

- Construído com [Capacitor](https://capacitorjs.com/) e o plugin
  [`@capacitor-community/text-to-speech`](https://github.com/capacitor-community/text-to-speech), ambos de código aberto.
- Voz fornecida pelo motor de síntese de fala do Android do aparelho.
- Licença do projeto: **a definir** pelo autor antes de tornar o repositório público.

# 📖 Aprender a Ler

Aplicativo Android de alfabetização para **adultos e idosos que estão aprendendo a ler**, feito para ser usado
sozinho, no ritmo de cada pessoa, **sem internet e sem pressão**.

## Sobre o projeto

Muitos aplicativos de alfabetização são pensados para crianças ou funcionam como jogos, com cronômetro, pontos,
vidas e ranking. Para um adulto ou idoso que começa tarde, esse formato pode gerar ansiedade e falta de identificação.

O **Aprender a Ler** nasceu de um caso real: apoiar uma pessoa da família na alfabetização usando um celular Android
antigo, de tela pequena. O foco é reconhecer letras, juntar sílabas, ler palavras e frases curtas e, principalmente,
reconhecer **o que importa na vida dela**: o próprio nome, o nome dos filhos e netos, placas, preços, horas do remédio
e orações que já sabe de cor.

**O app não é:** um jogo (sem pontos, fases ou cronômetro), uma avaliação (não existe resposta "errada"), um substituto do professor, nem outros serviços online (sem internet, anúncios, conta ou coleta de dados).

## Lições

Ate a esta versão são 7 lições e 207 telas. Cada tela mostra uma coisa por vez, com figura e voz.

| # | Lição | O que a pessoa faz |
|---|---|---|
| 1 | **Letras** | Vê a letra maiúscula e minúscula, a figura e a palavra; ouve o nome da letra |
| 2 | **Sílabas** | Toca em BA BE BI BO BU e ouve cada sílaba; depois lê palavras com aquela consoante |
| 3 | **Meu nome** | Vê o nome em letras gigantes e ouve soletrar, letra por letra, com destaque |
| 4 | **Formar palavras** | Toca nas sílabas soltas (BO, LA) e em "Juntar" para ver e ouvir a palavra (BOLA) |
| 5 | **Dia a dia** | Lê palavras em quadros que lembram placas: MERCADO, FARMÁCIA, SAÍDA, BANHEIRO |
| 6 | **Números** | Dígitos, preços com figura ("R$ 5,00" → "cinco reais") e horas do remédio |
| 7 | **Frases** | Lê frases curtas, Parabéns, Pai-Nosso e Ave-Maria, com destaque palavra por palavra |

A lista de nomes da Lição 3 já vem preenchida e pode ser editada por um familiar (cadastro escondido, para a pessoa
que aprende não apagar sem querer).

## Princípios

- **Uma tela, uma coisa por vez**, sem pressão, sem pontos e sem erro.
- **Começar pelo que tem significado:** o próprio nome vem logo depois das sílabas.
- **Som e imagem sempre juntos**, com voz ajustável e botão "🐢 Devagar".
- **Botões grandes e alto contraste**, sempre no mesmo lugar, com tema claro e escuro.
- **Funciona sem internet:** os dados ficam só no aparelho.

Os critérios pedagógicos e de interface estão explicados em [`PROJETO.md`](PROJETO.md).
São princípios adotados no projeto, **ainda não validados em estudo formal**.

## Tecnologias

HTML, CSS e JavaScript (um único arquivo) · [Capacitor](https://capacitorjs.com/) para gerar o app Android ·
plugin [`text-to-speech`](https://github.com/capacitor-community/text-to-speech) para falar com o motor de voz do
próprio Android · Docker para gerar o APK sem instalar Java ou Android SDK · Git com versionamento semântico.

## Começar rápido

Com o Docker instalado e em execução, na pasta do projeto:

```
bash construir.sh
```

O APK sai em `saida/aprender-a-ler-vX.Y.Z.apk`. Passe o arquivo para o celular e instale. O celular precisa ter a voz de **português (Brasil)** instalada (Configurações > Idioma > Saída de texto para voz).

Todos os comandos, o fluxo de versões e o envio ao git estão em [`COMO-USAR.md`](COMO-USAR.md).

## Documentação

| Arquivo | Conteúdo |
|---|---|
| [`PROJETO.md`](PROJETO.md) | Descrição completa: objetivo, critérios pedagógicos, interface, ferramentas, evolução e limitações |
| [`COMO-USAR.md`](COMO-USAR.md) | Como gerar o APK, criar versões e enviar ao git |
| [`CHANGELOG.md`](CHANGELOG.md) | O que mudou em cada versão |
| [`VERSION`](VERSION) | Versão atual |

## Estado do projeto

Sete lições implementadas, com o layout verificado automaticamente em três tamanhos de celular.
Falta a **validação prática com a pessoa que vai aprender**, que deve orientar as próximas versões.
A qualidade da voz depende do aparelho.

## Licença

A definir depois.

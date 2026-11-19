# Aprender a Ler – build do APK via Docker

Editar a tela:  app/www/index.html
Gerar o APK:    bash construir.sh      -> saida/aprender-a-ler.apk
Limpar Docker:  bash limpar.sh

Guarde a pasta chave/ junto com o código: ela mantém a mesma "assinatura"
do app, e assim o APK novo atualiza o antigo no celular sem desinstalar.

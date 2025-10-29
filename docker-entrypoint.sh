#!/bin/sh
set -e

# Criar arquivo webhook.txt com a variável de ambiente CHAT_WEBHOOK
if [ -n "$CHAT_WEBHOOK" ]; then
    echo "$CHAT_WEBHOOK" > /usr/share/nginx/html/webhook.txt
    echo "Webhook configurado: $CHAT_WEBHOOK"
else
    echo "AVISO: Variável CHAT_WEBHOOK não definida"
fi

# Executar comando padrão do nginx
exec "$@"

# AI Chat Prototype

Um protótipo de chat com integração de IA.

## Descrição

Este projeto é uma interface de chat moderna e responsiva que se conecta a um serviço de IA para processar perguntas.

## Recursos

- ✨ Interface de chat moderna e responsiva
- 🤖 Integração com IA via webhook
- 💬 Indicador de digitação animado
- 📱 Design mobile-first
- 🎨 Gradientes e animações suaves

## Como usar

1. Configure um webhook que processe perguntas com IA
2. Crie um arquivo `webhook.txt` com a URL do webhook
3. Execute o servidor local:
   ```bash
   ./start.sh
   ```
4. Acesse http://0.0.0.0:8989

## Arquivos

- `index.html` - Interface principal do chat
- `start.sh` - Script para iniciar servidor HTTP local
- `.gitignore` - Ignora arquivos sensíveis (tokens, webhooks, PDFs)

## Estrutura do projeto

```
ai-chat-prototype/
├── index.html      # Interface do chat
├── start.sh        # Script de inicialização
├── .gitignore      # Arquivos ignorados
└── README.md       # Este arquivo
```

## Requisitos

- Python 3 (para servidor HTTP local)
- Serviço de webhook configurado
- Arquivo webhook.txt com URL do webhook

## Tecnologias

- HTML5
- CSS3 (Flexbox, Grid, Animations)
- Vanilla JavaScript
- Fetch API

## Licença

MIT

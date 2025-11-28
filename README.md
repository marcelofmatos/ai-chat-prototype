# AI Chat Prototype

Um protótipo de chat com integração de IA.

## Descrição

Este projeto é uma interface de chat moderna e responsiva que se conecta a um serviço de IA para processar perguntas usando uma base de conhecimento como escopo.

## Como usar

1. Configure um webhook que processe perguntas com IA
2. Crie um arquivo `webhook.txt` com a URL do webhook
3. Execute o servidor local:
   ```bash
   ./start.sh
   ```
4. Acesse http://0.0.0.0:8989

## Estrutura do projeto

```
ai-chat-prototype/
├── index.html      # Interface principal do chat
├── start.sh        # Script para iniciar servidor HTTP local
```

FROM nginx:alpine

# Copiar arquivo HTML para o diretório padrão do nginx
COPY index.html /usr/share/nginx/html/

# Copiar pasta de PDFs se necessário
COPY pdfs /usr/share/nginx/html/pdfs

# Copiar script de entrypoint
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

# Expor porta 80
EXPOSE 80

# Configurar entrypoint
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]

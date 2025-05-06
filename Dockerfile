FROM n8nio/n8n:latest

USER root

# Instale FFmpeg e utilitários de fontes
RUN apk update && apk add ffmpeg fontconfig

# Crie o diretório de fontes se não existir
RUN mkdir -p /usr/share/fonts/truetype/

# Copie a fonte para dentro do container
COPY *.ttf /usr/share/fonts/truetype/

# Atualize o cache de fontes
RUN fc-cache -fv

USER node


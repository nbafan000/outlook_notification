FROM n8nio/n8n

USER root
RUN mkdir -p /data && chown -R node:node /data

USER node
ENV N8N_USER_FOLDER=/data

EXPOSE 5678

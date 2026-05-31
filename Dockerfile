FROM n8nio/n8n

USER root
RUN apt-get update && apt-get install -y gosu && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 5678

ENTRYPOINT ["/entrypoint.sh"]

FROM n8nio/n8n:latest

USER root

RUN mkdir -p /opt/render/project/data && \
    chown -R node:node /opt/render/project/data

USER node

EXPOSE 5678

ENTRYPOINT ["n8n", "start"]

# ARG BUILD_FROM
ARG BUILD_FROM=ghcr.io/hassio-addons/base-nodejs:stable
FROM ${BUILD_FROM}

WORKDIR /app

# Copy data for add-on
COPY MeshCentralApp /app

RUN npm install meshcentral

RUN chmod a+x /app/run.sh

CMD [ "/app/run.sh" ]

#!/usr/bin/with-contenv bashio
set +u

bashio::log.info "Starting MeshCentral service."

node -v
npm -v

if ! bashio::fs.directory_exists "/config/meshcentral-data";
then
    mkdir -p /config/meshcentral-data
    mkdir -p /config/meshcentral-files
    mkdir -p /config/meshcentral-backups
    ln -s /config/meshcentral-data meshcentral-data
    ln -s /config/meshcentral-files meshcentral-files
    ln -s /config/meshcentral-backups meshcentral-backups
else
    ln -s /config/meshcentral-data meshcentral-data
    ln -s /config/meshcentral-files meshcentral-files
    ln -s /config/meshcentral-backups meshcentral-backups
fi

node node_modules/meshcentral --tlsoffload


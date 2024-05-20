#!/usr/bin/with-contenv bashio

CONFIG_PATH=/data/options.json
export TDM_MQTT_SERVER="$(bashio::config 'mqtt_host')"
export TDM_MQTT_PORT="$(bashio::config 'mqtt_port')"
export TDM_MQTT_USER="$(bashio::config 'mqtt_username')"
export TDM_MQTT_PASS="$(bashio::config 'mqtt_password')"


/usr/bin/supervisord -c /etc/supervisord.conf
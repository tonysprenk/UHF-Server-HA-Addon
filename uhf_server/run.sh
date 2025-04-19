#!/usr/bin/with-contenv bash
# shellcheck shell=bash

echo "Starting UHF server..."

# Read options from environment variables
PORT="${PORT:-8080}"
CONFIG_FILE="${CONFIG_FILE:-/config/uhf_server/config.yaml}"

echo "Using config file: ${CONFIG_FILE}"
echo "Listening on port: ${PORT}"

uhf-server -c "${CONFIG_FILE}" -p "${PORT}"

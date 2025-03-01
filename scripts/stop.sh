#!/usr/bin/env bash

function check_requirements() {
  if [[ -z "$(command -v docker)" ]]; then
    echo "Please install 'docker' before running this script..."
    exit 1
  elif [[ -z "$DATA_DIRECTORY" ]]; then
    echo "Please set 'DATA_DIRECTORY' environment variable before running this script..."
    exit 1
  elif [[ -z "$N8N_DB_PASSWORD" ]]; then
    echo "Please set 'N8N_DB_PASSWORD' environment variable before running this script..."
    exit 1
  elif [[ -z "$TIMEZONE" ]]; then
    export TIMEZONE="Etc/UTC"
  fi
}

function main() {
  check_requirements

  docker compose down
}

main

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

function ensure_data_folder_exists() {
  [[ ! -d "$DATA_DIRECTORY" ]] && mkdir -p "$DATA_DIRECTORY"

  [[ ! -d "$DATA_DIRECTORY/open-webui/data" ]] && mkdir -p "$DATA_DIRECTORY/open-webui/data"
  [[ ! -d "$DATA_DIRECTORY/open-webui/pipelines" ]] && mkdir -p "$DATA_DIRECTORY/open-webui/pipelines"

  [[ ! -d "$DATA_DIRECTORY/n8n" ]] && mkdir -p "$DATA_DIRECTORY/n8n"
  [[ ! -d "$DATA_DIRECTORY/n8n-db/data" ]] && mkdir -p "$DATA_DIRECTORY/n8n-db/data"
}

function main() {
  check_requirements

  ensure_data_folder_exists

  docker compose up --detach
}

main

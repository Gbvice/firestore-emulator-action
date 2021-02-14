#!/bin/sh

# Required environment variable
if [[ -z "${INPUT_PORT}" ]]; then
  echo "Missing PORT. Add port to your action input" >&2
  exit 1
fi

docker run --name firestore-emulator -p $INPUT_PORT:$INPUT_PORT -e PORT=$INPUT_PORT -d ridedott/firestore-emulator:latest
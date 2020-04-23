#!/usr/bin/env bash
set -ex
token_file="${HOME}/.exercism.token"
if [ ! -f "${token_file}" ]; then
  read -p "Enter your token (https://exercism.io/my/settings): " token
  echo "${token}" > $token_file
fi
token="$(<$token_file)"
exercism configure --token="${token}" --workspace="$(pwd)"

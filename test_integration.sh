#!/usr/bin/env bash
set -euo pipefail

ENV_FILE="$(dirname "$0")/.env"

if [[ ! -f "$ENV_FILE" ]]; then
  echo "ERROR: .env file not found at $ENV_FILE"
  echo "Create it with: TMDB_API_TOKEN=your_token"
  exit 1
fi

# Load variables from .env (ignore comment lines and empty lines)
while IFS='=' read -r key value; do
  [[ "$key" =~ ^[[:space:]]*# ]] && continue
  [[ -z "$key" ]] && continue
  export "$key=$value"
done < "$ENV_FILE"

if [[ -z "${TMDB_API_TOKEN:-}" ]]; then
  echo "ERROR: TMDB_API_TOKEN not set in .env"
  exit 1
fi

echo "Running integration tests..."
flutter test test/integration_test.dart \
  --dart-define=TMDB_API_TOKEN="$TMDB_API_TOKEN"

#!/usr/bin/env bash
# Research wrapper. All market research goes through Claude.
# Exits with code 3 if ANTHROPIC_API_KEY is unset so callers can fall back to WebSearch.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
ENV_FILE="$ROOT/.env"
if [[ -f "$ENV_FILE" ]]; then
  set -a
  # shellcheck disable=SC1090
  source "$ENV_FILE"
  set +a
fi

query="${1:-}"
if [[ -z "$query" ]]; then
  echo "usage: bash scripts/perplexity.sh \"<query>\"" >&2
  exit 1
fi

API_KEY="${ANTHROPIC_API_KEY:-${PERPLEXITY_API_KEY:-}}"
if [[ -z "$API_KEY" ]]; then
  echo "WARNING: ANTHROPIC_API_KEY or PERPLEXITY_API_KEY not set. Fall back to WebSearch." >&2
  exit 3
fi

payload="$(python3 -c "
import json, sys
print(json.dumps({
  'model': 'claude-opus-4-1',
  'max_tokens': 1024,
  'messages': [
    {'role': 'user', 'content': sys.argv[1]},
  ],
  'system': 'You are a precise financial research assistant. Provide accurate, concise market research. Always cite specific data points when available.',
}))
" "$query")"

curl -fsS https://api.anthropic.com/v1/messages \
  -H "x-api-key: $API_KEY" \
  -H "anthropic-version: 2023-06-01" \
  -H "Content-Type: application/json" \
  -d "$payload" | python3 -c "
import json, sys
resp = json.load(sys.stdin)
if 'content' in resp and resp['content']:
  print(resp['content'][0]['text'])
"
echo

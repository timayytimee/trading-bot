#!/usr/bin/env bash
# Research wrapper. All market research goes through the Anthropic API (Claude)
# with the web_search tool enabled so answers use live data, not stale training.
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
  echo "usage: bash scripts/research.sh \"<query>\"" >&2
  exit 1
fi

if [[ -z "${ANTHROPIC_API_KEY:-}" ]]; then
  echo "WARNING: ANTHROPIC_API_KEY not set. Fall back to WebSearch." >&2
  exit 3
fi

MODEL="${ANTHROPIC_MODEL:-claude-opus-5}"

payload="$(python3 -c "
import json, sys
print(json.dumps({
  'model': sys.argv[2],
  'max_tokens': 1024,
  'messages': [
    {'role': 'user', 'content': sys.argv[1]},
  ],
  'tools': [
    {'type': 'web_search_20260209', 'name': 'web_search', 'max_uses': 5},
  ],
  'system': 'You are a precise financial research assistant. Search the web for '
            'current data before answering. Be concise: specific numbers, price '
            'levels, and dates. Cite each source inline.',
}))
" "$query" "$MODEL")"

curl -fsS https://api.anthropic.com/v1/messages \
  -H "x-api-key: $ANTHROPIC_API_KEY" \
  -H "anthropic-version: 2023-06-01" \
  -H "Content-Type: application/json" \
  -d "$payload" | python3 -c "
import json, sys
resp = json.load(sys.stdin)
parts = [b.get('text', '') for b in resp.get('content', []) if b.get('type') == 'text']
out = '\n'.join(p for p in parts if p.strip())
print(out if out else json.dumps(resp)[:500])
"
echo

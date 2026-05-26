#!/usr/bin/env bash
# Notification wrapper. Posts messages to Telegram.
# Usage: bash scripts/telegram.sh "<message>"
# Falls back to local file if credentials are unset.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
ENV_FILE="$ROOT/.env"
FALLBACK="$ROOT/NOTIFICATIONS.md"

if [[ -f "$ENV_FILE" ]]; then
  set -a
  # shellcheck disable=SC1090
  source "$ENV_FILE"
  set +a
fi

if [[ $# -gt 0 ]]; then
  msg="$*"
else
  msg="$(cat)"
fi

if [[ -z "${msg// /}" ]]; then
  echo "usage: bash scripts/telegram.sh \"<message>\"" >&2
  exit 1
fi

stamp="$(date '+%Y-%m-%d %H:%M %Z')"

if [[ -z "${TELEGRAM_BOT_TOKEN:-}" || -z "${TELEGRAM_CHAT_ID:-}" ]]; then
  printf "\n---\n## %s (fallback — Telegram not configured)\n%s\n" "$stamp" "$msg" >> "$FALLBACK"
  echo "[telegram fallback] appended to NOTIFICATIONS.md"
  exit 0
fi

payload="$(python3 -c "
import json, sys
print(json.dumps({
  'chat_id': sys.argv[1],
  'text': sys.argv[2],
  'parse_mode': 'Markdown',
}))
" "$TELEGRAM_CHAT_ID" "$msg")"

curl -fsS -X POST \
  "https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage" \
  -H "Content-Type: application/json" \
  -d "$payload"
echo

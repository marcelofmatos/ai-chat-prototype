#!/usr/bin/env bash
set -euo pipefail

PORT=8989
DIR="${1:-.}"

# verifica python disponível
if command -v python3 >/dev/null 2>&1; then
    PY=python3
elif command -v python >/dev/null 2>&1; then
    PY=python
else
    echo "Python não encontrado. Instale Python 3." >&2
    exit 1
fi

cd "$DIR"

# inicia servidor HTTP temporário em background
$PY -m http.server "$PORT" --bind 0.0.0.0 &
PID=$!

trap 'printf "\nParando servidor (PID %s)...\n" "$PID"; kill "$PID" 2>/dev/null || true; exit' INT TERM EXIT

printf "Servidor temporário rodando em: http://0.0.0.0:%s/\nDiretório servido: %s\nPressione Ctrl+C para parar\n" "$PORT" "$DIR"

wait "$PID"
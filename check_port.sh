#!/bin/bash

# Значения по умолчанию
HOST="${1:-localhost}"
PORT="${2:-80}"
LOGFILE="port_check.log"

# Проверка доступности порта
nc -z "$HOST" "$PORT" >/dev/null 2>&1

if [ $? -ne 0 ]; then
    TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
    echo "$TIMESTAMP - $HOST:$PORT is unreachable" >> "$LOGFILE"
    echo "❌ $HOST:$PORT is unreachable. Logged to $LOGFILE"
else
    echo "✅ $HOST:$PORT is reachable"
fi

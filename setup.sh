#!/bin/bash -e

PROJECT_DIR="/home/osmc/kodi_backup"
PYTHON_EXECUTABLE="$PROJECT_DIR/.venv/bin/python3"

echo "Setting up crontab"
(crontab -l 2>/dev/null; echo "0 5 * * * AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} "$PYTHON_EXECUTABLE" "$PROJECT_DIR/backup.py" >/dev/null 2>&1") | crontab -

echo "All done, check crontab by calling crontab -e"

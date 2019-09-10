#!/bin/bash
set -e

python ./initdb.py
python ./app.py
python -c 'import app; app.add_user()'

exec "$@"

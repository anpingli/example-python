#!/bin/bash

function is_gunicorn_installed() {
    pip show gunicorn
}

# For SCL enablement
source .bashrc

set -e

export APP_FILE=${APP_FILE:-"app.py"}

if [[ ! -v APP_MODULE  && -f setup.py ]]; then
    APP_MODULE=`python setup.py --name`":application"
fi

if is_gunicorn_installed && [[ -v APP_MODULE ]]; then
    if [[ -v APP_CONFIG ]]; then
        export CONFIG="--config ${APP_CONFIG}"
    fi
    exec gunicorn ${APP_MODULE} --bind=:8080 ${CONFIG}
fi

exec python -u ${APP_FILE}

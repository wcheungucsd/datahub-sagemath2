#!/bin/bash

#export PATH="/home/sage/sage/src/bin:/home/sage/sage/build/bin:/home/sage/sage/local/var/lib/sage/venv-python3.9.9/bin:/home/sage/sage/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:${PATH}"

#exec sage -n jupyter --no-browser "$@"

echo "PATH = $PATH"
export PATH="/home/sage/sage/local/var/lib/sage/venv-python3.12.5/bin:/home/sage/sage/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:${PATH}"
echo "PATH = $PATH"

echo "BEGIN sage -n jupyterlab"

exec sage -n jupyterlab --no-browser "$@"

echo "END sage -n jupyterlab"

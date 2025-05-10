#!/bin/bash

export PATH="/home/sage/sage/src/bin:/home/sage/sage/build/bin:/home/sage/sage/local/var/lib/sage/venv-python3.9.9/bin:/home/sage/sage/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:${PATH}"

exec sage -n jupyter --no-browser "$@"

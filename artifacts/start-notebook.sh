#!/bin/bash

#export PATH="/home/sage/sage/src/bin:/home/sage/sage/build/bin:/home/sage/sage/local/var/lib/sage/venv-python3.9.9/bin:/home/sage/sage/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:${PATH}"

#exec sage -n jupyter --no-browser "$@"

#if [ x"$1" = x"sage-jupyter" ]; then
#    # If "sage-jupyter" is given as a first argument, we start a jupyter notebook
#    # with reasonable default parameters for running it inside a container.
#    shift
#    exec sage -n jupyter --no-browser --ip='0.0.0.0' --port=8888 "$@"
#else
#    exec sage -sh -c "$*"
#fi


#export PATH="/home/sage/sage:${PATH}"
#export PATH="/home/sage/sage:/home/sage/src/bin:${PATH}"
#export PATH="/home/sage/sage:/home/sage/src/bin:/home/sage/local/bin:/home/sage/build/bin:/home/sage/local/lib/gap/bin:/home/sage/sage/local/var/lib/sage/venv-python3.12.5/bin:${PATH}"
#export PATH="/home/sage/sage:/home/sage/src/bin:/home/sage/local/bin:/home/sage/build/bin:/home/sage/local/lib/gap/bin:/home/sage/sage/local/var/lib/sage/venv-python3.12.5/bin:${PATH}"


echo "PATH = $PATH"
export PATH="/home/sage/sage/local/var/lib/sage/venv-python3.12.5/bin:/home/sage/sage/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:${PATH}"
echo "PATH = $PATH"
echo "USER = $USER"

echo "BEGIN sage -n jupyterlab"
sleep 1

#exec sage -n jupyterlab --no-browser --ip='0.0.0.0' --port=8888 "$@"
exec sage -n jupyterlab --no-browser "$@"


echo "END sage -n jupyterlab"

sleep 10

exit 0

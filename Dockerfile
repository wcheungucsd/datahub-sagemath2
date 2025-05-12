# 1) choose base container
# generally use the most recent tag

# base notebook, contains Jupyter and relevant tools
# See https://github.com/ucsd-ets/datahub-docker-stack/wiki/Stable-Tag 
# for a list of the most current containers we maintain
#ARG BASE_CONTAINER=ghcr.io/ucsd-ets/datascience-notebook:stable
ARG BASE_CONTAINER=sagemath/sagemath:latest


FROM $BASE_CONTAINER

#LABEL maintainer="UC San Diego ITS/ETS <ets-consult@ucsd.edu>"
LABEL maintainer="wcheung@ucsd.edu"


# 2) change to root to install packages
#USER root

#RUN apt-get -y clean && apt-get -y update

#RUN apt-get -y install make


#USER sage
#RUN sage -i jupyterlab jupyterlab_widgets retrolab

USER root
RUN chmod -R 0755 /home/sage


COPY --chown=root:root --chmod=755 artifacts/start-notebook.sh /usr/local/bin/start-notebook.sh


USER sage

ENTRYPOINT["/usr/local/bin/start-notebook.sh"]


#RUN apt-get -y install htop

# 3) install packages using notebook user
#USER jovyan

# RUN conda install -y scikit-learn

#RUN pip install --no-cache-dir networkx scipy

# Override command to disable running jupyter notebook at launch
# CMD ["/bin/bash"]

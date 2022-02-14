from fastdotai/fastai:latest

COPY --chown=${NB_UID}:${NB_GID} requirements.txt /tmp/

#libraries
RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 libcurl3  -y

#Install required python packages
RUN pip install -r /tmp/requirements.txt
RUN pip install git+https://github.com/philferriere/cocoapi.git#subdirectory=PythonAPI

#Git Global Config
COPY --chown=$NB_UID .gitconfig /etc/gitconfig
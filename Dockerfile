from fastdotai/fastai:latest

COPY --chown=${NB_UID}:${NB_GID} requirements.txt /tmp/

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y

RUN pip install -r /tmp/requirements.txt

#CocoAPI
RUN pip install git+https://github.com/philferriere/cocoapi.git#subdirectory=PythonAPI

# add local repo
RUN mkdir /workspace/fastbook
COPY --chown=$NB_UID . /workspace/semtorch

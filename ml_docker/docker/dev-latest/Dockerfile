FROM nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04

#-------------------------------------------------------------------------------
### Enable UTF8 in docker instance
#-------------------------------------------------------------------------------
RUN apt-get update -y && \
    apt-get install -y locales && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*
RUN locale-gen en_US.UTF-8
ENV LANG='en_US.UTF-8' LANGUAGE='en_US:en' LC_ALL='en_US.UTF-8'
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
### System packages
#-------------------------------------------------------------------------------
RUN apt-get update -y && \
    apt-get install -y \
        coreutils python3 python3-pip python2 python2-pip \
    && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*

#-------------------------------------------------------------------------------
### Depp Learning Packages
#-------------------------------------------------------------------------------
# Note that tf and pytorch here uses CUDA 9.0, not 9.1.
RUN pip3 install tensorflow-gpu==1.8.0rc0
RUN pip3 install keras==2.1.5
RUN pip3 install cupy-cuda90==4.0.0rc1
RUN pip3 install chainer==4.0.0rc1

# Misc
RUN pip3 install tensorflowjs --no-dependencies
RUN pip3 install -U scikit-learn
RUN pip3 install \
    joblib records babel tabulate python-gflags yapf flake8 absl-py \
    Pillow tqdm h5py
#-------------------------------------------------------------------------------

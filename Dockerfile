FROM centos:centos6

MAINTAINER marcus@abstractfactory.io

RUN yum update -y && yum install -y \
    nano \
    csh \
    libXp \
    libXmu \
    libXpm \
    libXi \
    libtiff \
    libXinerama \
    elfutils \
    gstreamer-plugins-base.x86_64 \
    gamin \
    git \
    mesa-utils \
    tcsh \
    xorg-x11-server-Xorg \
    wget && \
    yum groupinstall -y "X Window System"

RUN wget https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py && \
    pip install --target=/usr/local/lib/python2.7/site-packages \
        nose \
        mock \
        unittest2

# Expose Python libraries to Maya
ENV PYTHONPATH=/usr/local/lib/python2.7/site-packages

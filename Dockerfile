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

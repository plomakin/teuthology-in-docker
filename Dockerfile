FROM ubuntu:14.04
MAINTAINER Petr Lomakin <plomakin@mirantis.com>

RUN apt-get update

RUN apt-get install -y git python-setuptools git vim; \
    easy_install pip

RUN git clone https://github.com/ceph/teuthology.git /opt/teuthology

RUN cd /opt/teuthology; ./bootstrap install

RUN ["/bin/bash"]

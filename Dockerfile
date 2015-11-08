FROM centos:6

MAINTAINER Yutaka Kinjo <yutakakinjyo@gmail.com>

ENV PROJECT /project

RUN mkdir $PROJECT
WORKDIR $PROJECT

ADD . $PROJECT

RUN yum install cmake gcc gcc-c++ -y;\
    mkdir build; \
    cd build; \
    cmake -Dtest=ON ..;\
    make
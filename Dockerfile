FROM ubuntu:18.04

RUN apt-get update -y && apt-get install -y \
    software-properties-common
RUN apt-add-repository ppa:ansible/ansible
RUN apt-get update -y && apt-get install -y \
    ansible

WORKDIR /work

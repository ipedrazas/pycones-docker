#! /bin/bash

# Install latest docker
sudo apt-key -y adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
sudo sh -c "echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
sudo apt-get update
sudo apt-get install lxc-docker

# Docker without sudo

sudo groupadd docker
sudo gpasswd -a ${USER} docker
sudo service docker restart


# pull some images
docker pull ubuntu
docker pull tpires/neo4j
docker pull dockerfile/redis
docker pull dockerfile/mongodb
docker pull postgres
docker pull ipedrazas/elasticsearch
docker pull poklet/cassandra
docker pull python:2
docker pull python:3
docker pull nornagon/postgres
docker pull clue/ttrss
docker pull ipedrazas/taiga-front
docker pull ipedrazas/taiga-back
docker pull php:5.6-apache
docker pull node:0.10-onbuild

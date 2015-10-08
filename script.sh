#!/bin/bash
# Run this script to get started, it will install python 2/3 kernels for jupyter
# It can  be converted to Dockerfile easily (it was taken from a one)
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y install wget
sudo apt-get -y install vim
sudo apt-get -y install linux-image-generic-lts-trusty
sudo apt-get -y install git
sudo apt-get -y install bridge-utils

sudo apt-get install -y npm nodejs-legacy
sudo npm install -g configurable-http-proxy
sudo apt-get install -y python3 python3-setuptools
sudo apt-get install -y python3-pip
sudo apt-get install python3-pip
sudo apt-get install -y python3-matplotlib
sudo apt-get install -y python3-numpy
sudo apt-get install -y python3-scipy

sudo apt-get install -y python python-setuptools
sudo apt-get install -y python-pip
sudo apt-get install python-pip
sudo apt-get install -y python-matplotlib
sudo apt-get install -y python-numpy
sudo apt-get install -y python-scipy

sudo pip3 install pandas
sudo pip3 install seaborn
sudo pip2 install pandas
sudo pip2 install seaborn

sudo pip3 install pyfits
sudo pip2 install pyfits

sudo pip2 install "ipython[notebook]"
sudo pip3 install "ipython[notebook]"

sudo apt-get install -y gfortran autotools-dev g++ build-essential autoconf automake
sudo apt-get install -y openmpi-bin openmpi-doc libopenmpi-dev
sudo pip3 install mpi4py
sudo pip2 install mpi4py
sudo pip3 install ipywidgets
sudo pip2 install ipywidgets
sudo pip3 install healpy
sudo pip2 install healpy


sudo ipython2 kernelspec install-self
sudo ipython3 kernelspec install-self


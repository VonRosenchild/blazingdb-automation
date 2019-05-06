#!/bin/bash

#docker run --runtime=nvidia -ti nvidia/cuda:10.0-devel-ubuntu18.04 bash

apt-get update
apt-get install -y python3.7 python3-pip git vim
apt-get install -y --no-install-recommends sudo bzip2 wget curl nano vim-tiny lsof htop net-tools
apt-get install -y --no-install-recommends libcurl3 libssl1.0.0 zlib1g libuuid1
apt-get install -y supervisor openjdk-8-jre 

wget https://github.com/Kitware/CMake/releases/download/v3.12.4/cmake-3.12.4-Linux-x86_64.sh
bash cmake-3.12.4-Linux-x86_64.sh --skip-license --prefix=/usr


pip3 install wheel==0.32.1
pip3 install cmake_setuptools

pip3 install pyarrow==0.12.1
pip3 install pandas==0.24.2
pip3 install numpy==1.16.2

#CONTAINER_ID="a62a560bc8c6"
#docker cp ./cudf/cpp/install/lib/librmm.so a62a560bc8c6:/tmp/
#docker cp ./cudf/cpp/install/lib/libcudf.so a62a560bc8c6:/tmp/
#docker cp ./libhdfs3/libhdfs3.so a62a560bc8c6:/tmp/

#docker cp ./nvstrings/lib/libNVText.so a62a560bc8c6:/tmp/
#docker cp ./nvstrings/lib/libNVStrings.so a62a560bc8c6:/tmp/
#docker cp ./nvstrings/lib/libNVCategory.so a62a560bc8c6:/tmp/




FROM hashbangmedia/common
MAINTAINER Richard Fairthorne <richard.fairthorne@gmail.com>

# GLUSTER
RUN add-apt-repository -y ppa:gluster/glusterfs-3.13 && \
    apt-get update && \
    apt-get install -y glusterfs-server glusterfs-client

# GANESHA
RUN git clone https://github.com/nfs-ganesha/nfs-ganesha.git && \
cd nfs-ganesha && \
git submodule update --init --recursive && \
apt-get install -y g++ libboost-dev cmake make git doxygen && \
apt-get install -y build-essential libglu1-mesa-dev libc6-dev bison flex && \
cmake -DUSE_GSS=OFF $PWD/src && \
make && \
make install && \
cd / && \
rm -rf /nfs-ganesha

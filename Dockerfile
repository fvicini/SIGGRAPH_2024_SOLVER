FROM ubuntu:22.04 AS siggraph_2024_solver

# Create machine
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
apt-utils \
ssh \
software-properties-common \
apt-transport-https ca-certificates gnupg software-properties-common wget \
bash-completion \
gcc-11 g++-11 gcc-11-base gfortran-11 \
&& update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 100 \
&& update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-11 100 \
&& update-alternatives --install /usr/bin/gfortran gfortran /usr/bin/gfortran-11 100

RUN apt-get update && \
apt-get install -y cmake && \
apt-get install -y git

RUN useradd --create-home appuser
USER appuser

# Copy externals
WORKDIR /home/appuser/externals/
ADD ./release/externals /home/appuser/externals/

# Build application and tests
WORKDIR /home/appuser/application
ADD ./release/application /home/appuser/application/

FROM ivision/ubuntu

#3.4.3
ENV PYTHON_VERSION 2.7
ENV NUM_CORES 8

# Install OpenCV 3.0
RUN apt-get -y update && apt-get install -y --no-install-recommends python$PYTHON_VERSION-dev wget unzip python-setuptools \
                       build-essential cmake git pkg-config libatlas-base-dev gfortran \
                       libjasper-dev libgtk2.0-dev libavcodec-dev libavformat-dev \
                       libswscale-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libv4l-dev python-pip \
			&& rm -rf /var/lib/apt/lists/*
RUN pip install --upgrade pip
RUN pip install numpy matplotlib

RUN git clone https://github.com/opencv/opencv_contrib.git
WORKDIR /opencv_contrib
RUN     git checkout 3.2.0

WORKDIR /opt

RUN git clone https://github.com/opencv/opencv.git
    
WORKDIR /opt/opencv

RUN     git checkout 3.2.0

RUN mkdir /opt/opencv/build
WORKDIR /opt/opencv/build

RUN cmake -D CMAKE_BUILD_TYPE=RELEASE \
	-D BUILD_PYTHON_SUPPORT=ON \
	-D CMAKE_INSTALL_PREFIX=/usr/local \
	-D INSTALL_C_EXAMPLES=OFF \
	-D INSTALL_PYTHON_EXAMPLES=OFF \
	-D OPENCV_EXTRA_MODULES_PATH=/opencv_contrib/modules \
	-D BUILD_EXAMPLES=OFF \
	-D BUILD_NEW_PYTHON_SUPPORT=ON \
	-D WITH_IPP=OFF \
	-D BUILD_opencv_legacy=OFF \
	-D WITH_V4L=ON -D BUILD_LIBPROTOBUF_FROM_SOURCES=ON ..
RUN make -j$NUM_CORES
RUN make install
RUN ldconfig
RUN cd ../../ && rm -R /opt/opencv


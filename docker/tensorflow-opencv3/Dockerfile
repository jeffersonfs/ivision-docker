#
# TENSORFLOW GPU ON UBUNTU_16 + PYTHON_2.7 + OPENCV_3.2 + CAFFE_LAST
#


FROM ivision/opencv3

# Pick up some TF dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
        curl \
        libfreetype6-dev \
        libpng12-dev \
        libzmq3-dev \
        pkg-config \
        rsync \
        software-properties-common \
        unzip \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


RUN pip --no-cache-dir install \
			Pillow \
        	h5py \
        	ipykernel \
        	jupyter \
        	matplotlib \
        	numpy \
        	pandas \
        	scipy \
        	sklearn \
		   tensorflow


WORKDIR "/notebooks"




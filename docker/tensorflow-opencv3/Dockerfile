#
# TENSORFLOW GPU ON UBUNTU_16 + PYTHON_2.7 + OPENCV_3.2 + CAFFE_LAST
#


FROM ivision/opencv3 AS tensorflow-opencv3

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
			os \
			glob \
			random \
			math \
			time \
			datetime

# Install TensorFlow GPU version.
RUN pip --no-cache-dir install \
    http://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-0.0.0-cp27-none-linux_x86_64.whl


WORKDIR "/notebooks"




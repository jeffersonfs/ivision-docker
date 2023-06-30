#
# TENSORFLOW GPU ON UBUNTU_16 + PYTHON_2.7 + OPENCV_3.2
#


FROM tensorflow/tensorflow:latest-gpu-py3-jupyter

# Pick up some TF dependencies
RUN	apt-get update && apt-get install -y --no-install-recommends \
			build-essential \
			curl \
			libfreetype6-dev \
			libpng12-dev \
			libzmq3-dev \
			pkg-config \
			rsync \
			software-properties-common \
			unzip \
			python-tk \
			libboost1.58-all-dev \
			libcanberra-gtk-module \
			libcanberra-gtk3-module \
			libcupti-dev \
			&& \
		apt-get clean && \
		rm -rf /var/lib/apt/lists/*


RUN pip --no-cache-dir install \
			--upgrade pip \
			Pillow \
			h5py \
			ipykernel \
			jupyter \
			matplotlib \
			numpy \
			pandas \
			scipy \
			sklearn \
			scikit-learn \
			scikit-image \
			Image \

WORKDIR "/notebooks"

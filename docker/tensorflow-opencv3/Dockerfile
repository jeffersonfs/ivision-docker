#
# TENSORFLOW GPU ON UBUNTU_16 + PYTHON_2.7 + OPENCV_3.2
#


FROM tensorflow/tensorflow:latest-gpu-py3-jupyter

# RUN apt-get install -y --no-install-recommends wget
# RUN apt-key del 7fa2af80
# RUN wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-keyring_1.0-1_all.deb
# RUN dpkg -i cuda-keyring_1.0-1_all.deb
# RUN sed -i '/developer\.download\.nvidia\.com\/compute\/cuda\/repos/d' /etc/apt/sources.list
# RUN apt-get update

# Set the locale
# RUN sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && \
#     locale-gen
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8  

RUN apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/3bf863cc.pub
# Pick up some TF dependencies
RUN	apt-get update && apt-get install -y --no-install-recommends \
			build-essential \
			curl \
			libfreetype6-dev \
			libzmq3-dev \
			pkg-config \
			rsync \
			software-properties-common \
			unzip \
			libcupti-dev && \
		apt-get clean && \
		rm -rf /var/lib/apt/lists/*


RUN pip install --upgrade pip

RUN pip --no-cache-dir install \
			Pillow \
			matplotlib \
			numpy \
			pandas \
			scipy \
			sklearn \
			scikit-learn \
			scikit-image \
			Image

WORKDIR "/notebooks"

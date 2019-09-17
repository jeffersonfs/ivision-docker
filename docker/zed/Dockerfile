FROM stereolabs/zed:ubuntu1604-cuda9.0-zed2.7-gl

RUN apt-get update && \
    apt-get -y install python3-pip \
                       libopencv-dev

RUN python3 -m pip install --upgrade pip && \
    pip install cython numpy

RUN cd /opt && \
    git clone https://github.com/stereolabs/zed-python.git && \
    cd zed-python && \
    pip install -r requirements.txt && \
    python3 setup.py build && \
    python3 setup.py install

RUN pip install numpy scipy matplotlib ipython jupyter pandas sympy nose

RUN rm -rf /var/lib/apt/lists/*

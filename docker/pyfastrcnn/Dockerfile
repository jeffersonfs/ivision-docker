FROM ivision/caffe

WORKDIR /opt/

RUN git clone --recursive https://github.com/rbgirshick/py-faster-rcnn.git
ENV FRCN_ROOT=/opt/py-faster-rcnn
WORKDIR $FRCN_ROOT/lib
RUN make -j8

WORKDIR $FRCN_ROOT/caffe-fast-rcnn/
ADD Makefile.config /opt/py-faster-rcnn/caffe-fast-rcnn/Makefile.config


RUN git remote add caffe https://github.com/BVLC/caffe.git && \
    git config --global user.email "ivision@ufba.br" && \
    git config --global user.name "ivision" && \
    git fetch caffe && \
    git merge -X theirs caffe/master

ADD python_layer.hpp /opt/py-faster-rcnn/caffe-fast-rcnn/include/caffe/layers/python_layer.hpp

RUN git clone https://github.com/NVIDIA/nccl.git && cd nccl && make -j install && cd .. && rm -rf nccl && \
    make -j8 && make pycaffe

ENV CAFFE_ROOT=/$FRCN_ROOT/caffe-fast-rcnn
ENV PYCAFFE_ROOT $CAFFE_ROOT/python
ENV PYTHONPATH $PYCAFFE_ROOT:$PYTHONPATH
ENV PATH $CAFFE_ROOT/build/tools:$PYCAFFE_ROOT:$PATH
RUN echo "$CAFFE_ROOT/build/lib" >> /etc/ld.so.conf.d/caffe.conf && ldconfig

WORKDIR /opt/
ENV BOXES_ROOT=/opt/Evolving_Boxes
RUN git clone https://github.com/Willy0919/Evolving_Boxes.git
ADD concat_test.py $BOXES_ROOT/lib/evb/concat_test.py
WORKDIR $BOXES_ROOT/lib
RUN make -j8
RUN pip install easydict
RUN pip install -e .

RUN apt-get update && apt-get install -y --no-install-recommends \
        python-tk && \
        rm -rf /var/lib/apt/lists/*

WORKDIR /workspace


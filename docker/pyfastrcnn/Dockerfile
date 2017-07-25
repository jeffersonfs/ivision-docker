FROM ivision/caffe

ENV FRCN_ROOT=/opt/Evolving_Boxes

WORKDIR /opt/

RUN git clone https://github.com/Willy0919/Evolving_Boxes.git

WORKDIR $FRCN_ROOT/lib

RUN make -j8




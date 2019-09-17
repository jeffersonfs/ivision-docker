docker run --runtime nvidia \
        -it --privileged \
         -e DISPLAY \
        --env="QT_X11_NO_MITSHM=1" \
         -v /tmp/.X11-unix:/tmp/.X11-unix \
         -v /home/jefferson/:/workspace \
         --net=host --env=DISPLAY \
         -p 8888:8888 jeffersonfs/zed


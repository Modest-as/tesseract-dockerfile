FROM i386/ubuntu:16.04

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:alex-p/tesseract-ocr

RUN apt-get update && \
    apt-get -y install python3 python3-dev && \
    apt-get install -y tesseract-ocr && \
    apt-get install -y python3-setuptools

RUN easy_install3 pip

RUN pip3 install pillow six

RUN mkdir /tesseract

WORKDIR /tesseract

CMD ["/usr/bin/python3"]
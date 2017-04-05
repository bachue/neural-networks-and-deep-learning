FROM python:2.7
MAINTAINER Rong Zhou "zhourong@qiniu.com"

RUN mkdir -p /root/.pip                                                             && \
    echo '[global]'                                          >  /root/.pip/pip.conf && \
    echo 'trusted-host = mirrors.aliyun.com'                 >> /root/.pip/pip.conf && \
    echo 'index-url = http://mirrors.aliyun.com/pypi/simple' >> /root/.pip/pip.conf

ADD . /py
RUN pip install -r /py/requirements.txt

WORKDIR /py/src

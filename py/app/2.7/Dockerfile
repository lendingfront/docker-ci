FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install build-essential checkinstall libxml2-dev libxslt-dev \
    wget curl libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev \
    tk-dev libgdbm-dev libc6-dev libbz2-dev libpq-dev python-dev -y
RUN cd /usr/src && \
    wget https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tgz && \
    tar xzf Python-2.7.18.tgz && \
    cd Python-2.7.18 && \
    ./configure --enable-optimizations && \
    make install && \
    rm -rf /usr/src/Python-2.7.18*
RUN python2.7 -m ensurepip --upgrade && \
    pip2.7 install -U wheel && \
    pip2.7 install --upgrade pip
RUN mkdir /log

CMD cd ${SRC} && \
    pip2.7 install -r ${REQUIREMENTS} --default-timeout=100 && \
    python2.7 run.py runserver

FROM ubuntu:14.04

ENV FORCE_COLOR true
ENV MYPY_FORCE_COLOR 1

RUN apt-get update
RUN apt-get install build-essential checkinstall libxml2-dev libxslt-dev \
    wget libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev \
    tk-dev libgdbm-dev libc6-dev libbz2-dev libpq-dev python-dev -y
RUN cd /usr/src && \
    wget https://www.python.org/ftp/python/3.6.14/Python-3.6.14.tgz && \
    tar xzf Python-3.6.14.tgz && \
    cd Python-3.6.14 && \
    ./configure --enable-optimizations && \
    make install && \
    rm -rf /usr/src/Python-3.6.14*
RUN python3.6 -m ensurepip --upgrade && \
    pip3.6 install -U wheel && \
    pip3.6 install --upgrade pip

CMD cd /src && \
    pip3.6 install -r ${REQUIREMENTS} && \
    mypy --namespace-packages --explicit-package-bases ${FILES}

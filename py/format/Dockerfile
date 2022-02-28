FROM python:3.6-slim

RUN apt-get update

RUN pip3.6 install --upgrade pip
RUN pip3.6 install --default-timeout=100 black==21.7b0

CMD cd /src && \
    black --diff --check ${FILES}

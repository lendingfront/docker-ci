FROM python

RUN apt-get update && apt-get install -y \
    git
RUN pip install pre-commit \
    && mkdir /pre-commit && \
    cd /pre-commit && \
    git init . && \
    pre-commit install

WORKDIR /pre-commit

CMD ["pre-commit", "run", "--all-files"]

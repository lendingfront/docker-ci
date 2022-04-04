FROM node:14.4.0-slim

ENV FORCE_COLOR true

RUN apt-get update

CMD cd /src && \
    yarn install --ignore-engines --modules-folder /ci-cache && \
    yarn test ${FLAGS}

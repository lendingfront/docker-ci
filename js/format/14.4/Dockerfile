FROM node:14.4.0-slim

ENV FORCE_COLOR true

RUN apt-get update

CMD cd /source${PROJECT_PATH} && \
    yarn install --ignore-platform --ignore-engines --modules-folder /ci-cache && \
    yarn run lint-ci \
        --config /source${PROJECT_PATH}/.eslintrc \
        --ignore-path /source/.gitignore ${FILES}

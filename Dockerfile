FROM node:14

LABEL "com.github.actions.name"="vue cli plugin s3 deploy action"
LABEL "com.github.actions.description"="A Github action for vue-cli-plugin-s3-deploy"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="green"

LABEL version="1.0.0"
LABEL repository="https://github.com/hungbang/vue-cli-plugin-s3-deploy-action-new"
LABEL maintainer="hungbang"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
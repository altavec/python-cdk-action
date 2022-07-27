FROM python:3.9-alpine

LABEL org.opencontainers.image.source https://github.com/altavec/python-cdk-action

RUN apk --update --no-cache add nodejs npm jq curl bash git docker
RUN npm install -g aws-cdk

COPY entrypoint.sh /entrypoint.sh

RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]

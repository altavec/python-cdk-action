FROM python:3.9-alpine

RUN apk --update --no-cache add nodejs npm jq curl bash git docker
RUN npm install -g aws-cdk
RUN pip install aws-cdk.core

COPY entrypoint.sh /entrypoint.sh

RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]

FROM docker:dind
RUN apk update && apk upgrade && apk add  && \
    # REQUIREMENTS: Install bash, curl & azure-cli
    # Source: https://stackoverflow.com/questions/47699304/how-to-create-a-dind-docker-image-with-azure-cli-on-alpine-linux
     apk add bash make py-pip && \
     apk add --virtual=build gcc libffi-dev musl-dev openssl-dev python2-dev && \
     pip install azure-cli && \
     apk del --purge build && \
     az -h

  

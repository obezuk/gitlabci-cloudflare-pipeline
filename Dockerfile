FROM alpine

RUN apk --no-cache add \
        bash \
        less \
        groff \
        jq \
        git \
        curl \
        python \
        py-pip

RUN pip install --upgrade pip \
        awsebcli \
        awscli \
        cloudflare

ENV PAGER="less"

# Expose credentials volume
RUN mkdir ~/.aws
FROM python:slim

WORKDIR /docs
ADD requirements.txt /requirements.txt

ARG SPHINX_VERSION=7.1.2

RUN set -ex \
  && apt-get update \
  && apt-get install --no-install-recommends -y make \
  && apt-get autoremove \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && pip install sphinx==${SPHINX_VERSION} \
  && pip install -r /requirements.txt \
  && rm -v /requirements.txt

CMD ["make", "html"]

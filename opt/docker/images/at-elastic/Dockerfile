FROM localhost:5000/at-ubuntu-14.04:v1

ENV ELASTICSEARCH_MAJOR 2.0
ENV ELASTICSEARCH_VERSION 2.0.0
ENV ELASTICSEARCH_REPO_BASE http://packages.elasticsearch.org/elasticsearch/2.x/debian

RUN set -x \
        && apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4 \
        && echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list \
        && apt-get update \
        && apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION \
        && rm -rf /var/lib/apt/lists/* \
        && chown -R elk.elk /etc/elasticsearch

ENV PATH /usr/share/elasticsearch/bin:$PATH

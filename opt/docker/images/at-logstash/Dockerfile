FROM localhost:5000/at-ubuntu-14.04:v1

ENV LOGSTASH_MAJOR 2.0
ENV LOGSTASH_VERSION 1:2.0.0-1

RUN set -x \
        && apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4 \
        && echo "deb http://packages.elasticsearch.org/logstash/${LOGSTASH_MAJOR}/debian stable main" > /etc/apt/sources.list.d/logstash.list \
        && apt-get update \
        && apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION \
        && rm -rf /var/lib/apt/lists/* \
        && rm -rf /var/lib/logstash \
        && rm -rf /var/log/logstash \
        && ln -s /opt/elk/data /var/lib/logstash \
        && ln -s /opt/elk/logs /var/log/logstash \
        && /opt/logstash/bin/plugin install logstash-input-courier \
        # https://discuss.elastic.co/t/error-with-kibana-4-2-0-elasticsearch-2-0-0-and-logstash-2-0-0/34113/2
        && ln -s /lib/x86_64-linux-gnu/libcrypt.so.1 /usr/lib/x86_64-linux-gnu/libcrypt.so \
        && chown -R elk.elk /opt/elk 

ENV PATH /opt/logstash/bin:$PATH

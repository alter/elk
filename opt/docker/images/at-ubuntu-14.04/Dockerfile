FROM ubuntu:trusty
ENV LANG C.UTF-8
RUN	export DEBIAN_FRONTEND=noninteractive \
	&& echo 'force-confold' >> /etc/dpkg/dpkg.cfg \
  && echo 'APT::Install-Recommends "false";' >> /etc/apt/apt.conf \
  && echo 'APT::Install-Suggests "false";' >> /etc/apt/apt.conf \
	&& apt-get update \
	&& apt-get upgrade -y \
	&& apt-get install --no-install-recommends wget curl ca-certificates -y \
	&& apt-get install --no-install-recommends software-properties-common python-software-properties -y \
  && apt-get update && apt-get install -y --no-install-recommends libfontconfig1 \
	&& add-apt-repository ppa:webupd8team/java -y \
	&& apt-get update \
	&& echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections \
	&& apt-get install --no-install-recommends oracle-java8-installer -y \ 
	&& update-java-alternatives -s java-8-oracle \
	&& apt-get clean -y  \
  && groupadd -g 4000 elk \
  && useradd -g 4000 -u 4000 -d /opt/elk -m elk \
  && mkdir /opt/elk/data/ \
  && mkdir /opt/elk/logs/ \
  && chown -R elk:elk /opt/elk

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
ENV JAVA8_HOME /usr/lib/jvm/java-8-oracle


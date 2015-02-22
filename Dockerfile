FROM getmajordomus/majord-ubuntu:latest
MAINTAINER Michael Kuehl <hello@ratchet.cc>

ENV JAVA_VERSION 7

# add Java repository
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update

# install JDK
RUN echo oracle-java${JAVA_VERSION}-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN apt-get install -q -y oracle-java${JAVA_VERSION}-installer maven --no-install-recommends
RUN apt-get install -y oracle-java${JAVA_VERSION}-set-default

# cleanup
RUN apt-get clean && apt-get -y autoremove

# dummy run command
CMD ["pwd"]
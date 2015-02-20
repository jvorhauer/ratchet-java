FROM getmajordomus/majord-ubuntu:latest
MAINTAINER Michael Kuehl <hello@ratchet.cc>

# add Java 8 repository
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update

# install JDK
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN apt-get install -q -y oracle-java8-installer maven --no-install-recommends
RUN apt-get install -y oracle-java8-set-default

# cleanup
RUN apt-get clean && apt-get -y autoremove

# dummy run command
CMD ["pwd"]
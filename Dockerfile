FROM kriation/docker-centos7

MAINTAINER Armen Kaleshian <armen@kriation.com>

# Download, install Oracle JRE 8 via RPM, and tidy up
RUN rpm -i http://javadl.sun.com/webapps/download/AutoDL?BundleId=97359 \
    && rmdir /tmp/hsperfdata_root

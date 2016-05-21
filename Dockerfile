FROM kriation/centos7

MAINTAINER Armen Kaleshian <armen@kriation.com>

# Download, install Oracle JRE 8 via RPM, and tidy up
RUN rpm -i http://javadl.oracle.com/webapps/download/AutoDL?BundleId=207764

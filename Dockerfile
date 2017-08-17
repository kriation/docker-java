FROM kriation/centos7

MAINTAINER Armen Kaleshian <armen@kriation.com>

# Download, install Oracle JRE 8 via RPM, and tidy up
RUN rpm -i http://javadl.oracle.com/webapps/download/AutoDL?BundleId=225344_090f390dda5b47b9b721c7dfaa008135

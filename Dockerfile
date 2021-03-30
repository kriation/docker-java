FROM kriation/centos7

MAINTAINER Armen Kaleshian <armen@kriation.com>

# Download, install Oracle JRE 8 via RPM, and tidy up
RUN	rpm -i https://javadl.oracle.com/webapps/download/AutoDL?BundleId=244412_26081f2c2d854520a890cbbc4a1d8fee

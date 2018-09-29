FROM kriation/centos7

MAINTAINER Armen Kaleshian <armen@kriation.com>

# Download, install Oracle JRE 8 via RPM, and tidy up
RUN	rpm -i http://javadl.oracle.com/webapps/download/AutoDL?BundleId=234463_96a7b8442fe848ef90c96a2fad6ed6d1

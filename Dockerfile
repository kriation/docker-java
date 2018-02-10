FROM kriation/centos7

MAINTAINER Armen Kaleshian <armen@kriation.com>

# Download, install Oracle JRE 8 via RPM, and tidy up
RUN	rpm -i http://javadl.oracle.com/webapps/download/AutoDL?BundleId=230531_2f38c3b165be4555a1fa6e98c45e0808

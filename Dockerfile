FROM kriation/centos7

MAINTAINER Armen Kaleshian <armen@kriation.com>

# Download, install Oracle JRE 8 via RPM, and tidy up
RUN yum install glibc.i686 libgcc.i686 && \
	rpm -i http://javadl.oracle.com/webapps/download/AutoDL?BundleId=230529_2f38c3b165be4555a1fa6e98c45e0808 && \
	rpm -e glibc.i686 libgcc.i686 nss-softokn-freebl.i686

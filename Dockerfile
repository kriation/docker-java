ARG JAVA_VERSION

FROM kriation/centos7 as build-8
RUN rpm -i https://javadl.oracle.com/webapps/download/AutoDL?BundleId=245468_4d5417147a92418ea8b615e228bb6935

FROM kriation/centos7 as build-17
RUN rpm -i https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.rpm

FROM build-${JAVA_VERSION} as publish
ARG BUILD_DATE
ARG JAVA_VERSION
LABEL maintainer="armen@kriation.com"
LABEL org.label-schema.build-date="$BUILD_DATE"
LABEL org.label-schema.license="GPLv2"
LABEL org.label-schema.name="CentOS v7 with Oracle Java"
LABEL org.label-schema.schema-version="$JAVA_VERSION"
LABEL org.label-schema.vendor="armen@kriation.com"
LABEL org.opencontainers.image.created="$BUILD_DATE"
LABEL org.opencontainers.image.licenses="GPL-2.0-only"
LABEL org.opencontainers.image.title="CentOS v7 with Oracle Java"
LABEL org.opencontainers.image.version="$JAVA_VERSION"
LABEL org.opencontainers.image.vendor="armen@kriation.com"

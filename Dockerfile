FROM kriation/centos7 as build

# Download, install Oracle JDK 17 via RPM
RUN rpm -i https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.rpm

FROM build as publish

ARG BUILD_DATE

LABEL maintainer="armen@kriation.com"
LABEL org.label-schema.build-date="$BUILD_DATE"
LABEL org.label-schema.license="GPLv2"
LABEL org.label-schema.name="CentOS v7 widh Oracle JDK v17"
LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.vendor="armen@kriation.com"
LABEL org.opencontainers.image.created="$BUILD_DATE"
LABEL org.opencontainers.image.licenses="GPL-2.0-only"
LABEL org.opencontainers.image.title="CentOS v7 with Oracle JDK v17"
LABEL org.opencontainers.image.vendor="armen@kriation.com"

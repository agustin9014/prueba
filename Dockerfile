FROM quay.io/sclorg/httpd-24-micro-c9s:20260128

ARG APP_VERSION="dev"
ENV APP_VERSION="${APP_VERSION}"
RUN echo "Construyendo imagen con APP_VERSION=${APP_VERSION}"



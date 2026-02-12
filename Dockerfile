FROM quay.io/sclorg/httpd-24-micro-c9s:20260128

ARG APP_VERSION="dev"
ENV APP_VERSION="${APP_VERSION}"
RUN echo "Construyendo imagen con APP_VERSION=${APP_VERSION}"
USER 0
COPY . /tmp/src
RUN chown -R 1001:0 /tmp/src
USER 1001

RUN /usr/libexec/s2i/assemble

CMD ["/usr/libexec/s2i/run"]


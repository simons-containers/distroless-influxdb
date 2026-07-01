FROM cgr.dev/chainguard/curl:latest-dev AS builder

ARG INFLUXDB_VERSION
ARG INFLUXDB_RELEASE

WORKDIR /extract/influxdb
RUN curl --silent --show-error --location --output influxdb.tar.gz \
  "${INFLUXDB_RELEASE}" \
  && tar xf influxdb.tar.gz --strip-components=1

FROM scratch
ARG INFLUXDB_VERSION

COPY --from=builder /extract/influxdb/influxd /usr/bin/influxd

WORKDIR /var/lib/influxdb
ENV HOME=/var/lib/influxdb
ENV INFLUX_CONFIGS_PATH=/etc/influxdb/influx-configs 
ENV INFLUXD_BOLT_PATH=/var/lib/influxdb/influxd.bolt
ENV INFLUXD_ENGINE_PATH=/var/lib/influxdb/engine
ENV INFLUXD_REPORTING_DISABLED=true

ENTRYPOINT ["/usr/bin/influxd"]

LABEL org.opencontainers.image.title="distroless influxdb"
LABEL org.opencontainers.image.description="distroless influxdb"
LABEL org.opencontainers.image.version="${INFLUXDB_VERSION}"
LABEL org.opencontainers.image.source="https://github.com/simons-containers/distroless-influxdb"
LABEL org.opencontainers.image.volumes.config="/etc/influxdb/influx-configs"
LABEL org.opencontainers.image.volumes.data="/var/lib/influxdb"

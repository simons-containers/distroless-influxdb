# Distroless InfluxDB container

Bare-bones distroless InfluxDB container image.

## Running

Use environment variables for config, and/or mount config to `/etc/influxdb/influx-configs`. Mount data in `/var/lib/influxdb`.

Example:

```bash
docker run -it --rm \
  -v data:/var/lib/influxdb \
  ghcr.io/simons-containers/distroless-influxdb:latest
```

## Building

| Arg | Description |
|---|---|
| `INFLUXDB_VERSION` | Version of InfluxDB to use

Build container using build-args from versions.yaml:

```bash
docker build -t \
  distroless-influxdb:$(yq -r .influxdb versions.yaml) \
  $(yq -r 'to_entries | .[] | "--build-arg \(.key | ascii_upcase)_VERSION=\(.value)"' versions.yaml) -f Containerfile .
```

## License

Repository contents (e.g., `Containerfile`, build scripts, and configuration) are licensed under the **MIT License**.

Software included in built container images (such as **InfluxDB**) are provided under their respective upstream licenses and are not covered by the MIT license for this repository.

## Acknowledgements

This project depends on a number of upstream components and data sources:

- **InfluxDB** - Scalable datastore for metrics, events, and real-time analytics.  
  https://influxdata.com

[![Current Version](https://raw.githubusercontent.com/simons-containers/distroless-influxdb/badges/.badges/main/release.svg)](https://github.com/simons-containers/distroless-influxdb/pkgs/container/distroless-influxdb) [![Tags](https://raw.githubusercontent.com/simons-containers/distroless-influxdb/badges/.badges/main/tags.svg)](https://github.com/simons-containers/distroless-influxdb/pkgs/container/distroless-influxdb) <br> ![Current Size](https://raw.githubusercontent.com/simons-containers/distroless-influxdb/badges/.badges/main/size.svg) ![Wasted Size](https://raw.githubusercontent.com/simons-containers/distroless-influxdb/badges/.badges/main/wasted.svg) ![Efficiency](https://raw.githubusercontent.com/simons-containers/distroless-influxdb/badges/.badges/main/efficiency.svg) <br> ![Critical](https://raw.githubusercontent.com/simons-containers/distroless-influxdb/badges/.badges/main/critical.svg) ![High](https://raw.githubusercontent.com/simons-containers/distroless-influxdb/badges/.badges/main/high.svg) ![Medium](https://raw.githubusercontent.com/simons-containers/distroless-influxdb/badges/.badges/main/medium.svg) ![Low](https://raw.githubusercontent.com/simons-containers/distroless-influxdb/badges/.badges/main/low.svg) <br> [![Publish Workflow](https://img.shields.io/github/actions/workflow/status/simons-containers/distroless-influxdb/deploy.yaml?label=Publish%20Workflow&logo=github)](https://github.com/simons-containers/distroless-influxdb/actions/workflows/deploy.yaml) [![Update Workflow](https://img.shields.io/github/actions/workflow/status/simons-containers/distroless-influxdb/update-versions.yaml?label=Update%20Workflow&logo=github)](https://github.com/simons-containers/distroless-influxdb/actions/workflows/update-versions.yaml)

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

## License

Repository contents (e.g., `Containerfile`, build scripts, and configuration) are licensed under the **MIT License**.

Software included in built container images (such as **InfluxDB**) are provided under their respective upstream licenses and are not covered by the MIT license for this repository.

## Acknowledgements

This project depends on a number of upstream components and data sources:

- **InfluxDB** - Scalable datastore for metrics, events, and real-time analytics.  
  https://influxdata.com

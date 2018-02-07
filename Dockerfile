FROM grafana/grafana:<VERSION>

ENV GF_PATHS_PLUGINS=/plugins

RUN mkdir -p /plugins/humio2grafana &&\
    curl -L https://api.github.com/repos/humio/humio2grafana/tarball/master | tar xz --strip=1 -C /plugins/humio2grafana &&\
    echo "humio2graphana installed"
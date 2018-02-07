FROM grafana/grafana:<VERSION>

RUN mkdir -p /var/lib/grafana/data/plugins/humio2grafana &&\
    curl -L https://api.github.com/repos/humio/humio2grafana/tarball/master | tar xz --strip=1 -C /var/lib/grafana/data/plugins/humio2grafana
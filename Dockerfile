FROM grafana/grafana:<VERSION>

RUN grafana-cli --pluginsDir $GF_PATHS_PLUGINS plugins install raintank-worldping-app
RUN grafana-cli --pluginsDir $GF_PATHS_PLUGINS plugins install camptocamp-prometheus-alertmanager-datasource
RUN grafana-cli --pluginsDir $GF_PATHS_PLUGINS plugins install mtanda-google-calendar-datasource
RUN grafana-cli --pluginsDir $GF_PATHS_PLUGINS plugins install natel-plotly-panel
RUN grafana-cli --pluginsDir $GF_PATHS_PLUGINS plugins install mtanda-histogram-panel
RUN grafana-cli --pluginsDir $GF_PATHS_PLUGINS plugins install natel-discrete-panel
RUN grafana-cli --pluginsDir $GF_PATHS_PLUGINS plugins install grafana-piechart-panel

USER root
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/* && \
    mkdir -p $GF_PATHS_PLUGINS/humio2grafana && \
    curl -L https://api.github.com/repos/humio/humio2grafana/tarball/master | tar xz --strip=1 -C $GF_PATHS_PLUGINS/humio2grafana && \
    echo "humio2graphana installed"

USER grafana

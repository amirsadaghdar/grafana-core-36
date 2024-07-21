helm upgrade --install --atomic --timeout 300s grafana-k8s-monitoring grafana/k8s-monitoring --namespace "default" --create-namespace --values - <<EOF
cluster:
  name: eks-core-36
externalServices:
  prometheus:
    host: https://prometheus-prod-13-prod-us-east-0.grafana.net
    basicAuth:
      username: "1624439"
      password: 'helm repo add grafana https://grafana.github.io/helm-charts &&   helm
        repo update &&   helm upgrade --install --atomic --timeout 300s
        grafana-k8s-monitoring grafana/k8s-monitoring \     --namespace
        "default" --create-namespace --values - <<EOF cluster:   name:
        eks-core-36 externalServices:   prometheus:     host:
        https://prometheus-prod-13-prod-us-east-0.grafana.net     basicAuth:       username:
        "1624439"       password:
        REPLACE_WITH_ACCESS_POLICY_TOKEN   loki:     host:
        https://logs-prod-006.grafana.net     basicAuth:       username:
        "912156"       password:
        REPLACE_WITH_ACCESS_POLICY_TOKEN   tempo:     host:
        https://tempo-prod-04-prod-us-east-0.grafana.net:443     basicAuth:       username:
        "906472"       password: REPLACE_WITH_ACCESS_POLICY_TOKEN
        metrics:   enabled: true   cost:     enabled:
        true   node-exporter:     enabled: true logs:   enabled:
        true   pod_logs:     enabled: true   cluster_events:     enabled: true
        traces:   enabled: true receivers:   grpc:     enabled:
        true   http:     enabled: true   zipkin:     enabled:
        true   grafanaCloudMetrics:     enabled: false opencost:   enabled:
        true   opencost:     exporter:       defaultClusterId:
        eks-core-36     prometheus:       external:         url:
        https://prometheus-prod-13-prod-us-east-0.grafana.net/api/prom
        kube-state-metrics:   enabled: true prometheus-node-exporter:   enabled:
        true prometheus-operator-crds:   enabled: true alloy: {} alloy-events:
        {} alloy-logs: {} EOF'
  loki:
    host: https://logs-prod-006.grafana.net
    basicAuth:
      username: "912156"
      password: 'helm repo add grafana https://grafana.github.io/helm-charts &&   helm
        repo update &&   helm upgrade --install --atomic --timeout 300s
        grafana-k8s-monitoring grafana/k8s-monitoring \     --namespace
        "default" --create-namespace --values - <<EOF cluster:   name:
        eks-core-36 externalServices:   prometheus:     host:
        https://prometheus-prod-13-prod-us-east-0.grafana.net     basicAuth:       username:
        "1624439"       password:
        REPLACE_WITH_ACCESS_POLICY_TOKEN   loki:     host:
        https://logs-prod-006.grafana.net     basicAuth:       username:
        "912156"       password:
        REPLACE_WITH_ACCESS_POLICY_TOKEN   tempo:     host:
        https://tempo-prod-04-prod-us-east-0.grafana.net:443     basicAuth:       username:
        "906472"       password: REPLACE_WITH_ACCESS_POLICY_TOKEN
        metrics:   enabled: true   cost:     enabled:
        true   node-exporter:     enabled: true logs:   enabled:
        true   pod_logs:     enabled: true   cluster_events:     enabled: true
        traces:   enabled: true receivers:   grpc:     enabled:
        true   http:     enabled: true   zipkin:     enabled:
        true   grafanaCloudMetrics:     enabled: false opencost:   enabled:
        true   opencost:     exporter:       defaultClusterId:
        eks-core-36     prometheus:       external:         url:
        https://prometheus-prod-13-prod-us-east-0.grafana.net/api/prom
        kube-state-metrics:   enabled: true prometheus-node-exporter:   enabled:
        true prometheus-operator-crds:   enabled: true alloy: {} alloy-events:
        {} alloy-logs: {} EOF'
  tempo:
    host: https://tempo-prod-04-prod-us-east-0.grafana.net:443
    basicAuth:
      username: "906472"
      password: 'helm repo add grafana https://grafana.github.io/helm-charts &&   helm
        repo update &&   helm upgrade --install --atomic --timeout 300s
        grafana-k8s-monitoring grafana/k8s-monitoring \     --namespace
        "default" --create-namespace --values - <<EOF cluster:   name:
        eks-core-36 externalServices:   prometheus:     host:
        https://prometheus-prod-13-prod-us-east-0.grafana.net     basicAuth:       username:
        "1624439"       password:
        REPLACE_WITH_ACCESS_POLICY_TOKEN   loki:     host:
        https://logs-prod-006.grafana.net     basicAuth:       username:
        "912156"       password:
        REPLACE_WITH_ACCESS_POLICY_TOKEN   tempo:     host:
        https://tempo-prod-04-prod-us-east-0.grafana.net:443     basicAuth:       username:
        "906472"       password: REPLACE_WITH_ACCESS_POLICY_TOKEN
        metrics:   enabled: true   cost:     enabled:
        true   node-exporter:     enabled: true logs:   enabled:
        true   pod_logs:     enabled: true   cluster_events:     enabled: true
        traces:   enabled: true receivers:   grpc:     enabled:
        true   http:     enabled: true   zipkin:     enabled:
        true   grafanaCloudMetrics:     enabled: false opencost:   enabled:
        true   opencost:     exporter:       defaultClusterId:
        eks-core-36     prometheus:       external:         url:
        https://prometheus-prod-13-prod-us-east-0.grafana.net/api/prom
        kube-state-metrics:   enabled: true prometheus-node-exporter:   enabled:
        true prometheus-operator-crds:   enabled: true alloy: {} alloy-events:
        {} alloy-logs: {} EOF'
metrics:
  enabled: true
  cost:
    enabled: true
  node-exporter:
    enabled: true
logs:
  enabled: true
  pod_logs:
    enabled: true
  cluster_events:
    enabled: true
traces:
  enabled: true
receivers:
  grpc:
    enabled: true
  http:
    enabled: true
  zipkin:
    enabled: true
  grafanaCloudMetrics:
    enabled: false
opencost:
  enabled: true
  opencost:
    exporter:
      defaultClusterId: eks-core-36
    prometheus:
      external:
        url: https://prometheus-prod-13-prod-us-east-0.grafana.net/api/prom
kube-state-metrics:
  enabled: true
prometheus-node-exporter:
  enabled: true
prometheus-operator-crds:
  enabled: true
alloy: {}
alloy-events: {}
alloy-logs: {}
EOF
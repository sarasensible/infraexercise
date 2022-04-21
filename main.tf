resource "kubernetes_namespace" "this" {
  metadata {
    name = "monitoring"
  }
}

resource "kubernetes_namespace" "sre" {
  metadata {
    name = "sre"
  }
}

resource "helm_release" "monitoring" {
  depends_on = [kubernetes_namespace.this]
  name = "stack"
  repository = "https://grafana.github.io/helm-charts"
  chart = "loki-stack"
  namespace = "monitoring"
  values = [file("${path.module}/helm/loki-stack.yaml")]
}

resource "helm_release" "family-store" {
  name = "family-store"
  repository = "https://charts.itscontained.io"
  chart      = "raw"
  version = "0.2.5"

  namespace = "sre"
  values = [file("${path.module}/family-store/manifests.yaml")]
}

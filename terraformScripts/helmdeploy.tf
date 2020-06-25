data "helm_repository" "poc" {
  name = "poc"
  url  = "https://frediethomas.github.io/helm-charts"
}

resource "helm_release" "redis" {
  name       = "redis-poc"
  repository = data.helm_repository.poc.metadata[0].name
  chart      = "redis"
  version    = "0.1.0"
}


resource "helm_release" "cartservice" {
  name       = "cartservice-poc"
  repository = data.helm_repository.poc.metadata[0].name
  chart      = "cartservice"
  version    = "0.1.0"
}

resource "helm_release" "checkoutservice" {
  name       = "checkoutservice-poc"
  repository = data.helm_repository.poc.metadata[0].name
  chart      = "checkoutservice"
  version    = "0.1.0"
}

resource "helm_release" "currencyservice" {
  name       = "currencyservice-poc"
  repository = data.helm_repository.poc.metadata[0].name
  chart      = "currencyservice"
  version    = "0.1.0"
}

resource "helm_release" "frontend" {
  name       = "frontend-poc"
  repository = data.helm_repository.poc.metadata[0].name
  chart      = "frontend"
  version    = "0.1.0"
}

resource "helm_release" "productcatalogservice" {
  name       = "productcatalogservice-poc"
  repository = data.helm_repository.poc.metadata[0].name
  chart      = "productcatalogservice"
  version    = "0.1.0"
}

resource "helm_release" "recommendationservice" {
  name       = "recommendationservice-poc"
  repository = data.helm_repository.poc.metadata[0].name
  chart      = "recommendationservice"
  version    = "0.1.0"
}

resource "helm_release" "shippingservice" {
  name       = "shippingservice-poc"
  repository = data.helm_repository.poc.metadata[0].name
  chart      = "shippingservice"
  version    = "0.1.0"
}

resource "helm_release" "paymentservice" {
  name       = "paymentservice-poc"
  repository = data.helm_repository.poc.metadata[0].name
  chart      = "paymentservice"
  version    = "0.1.0"
}

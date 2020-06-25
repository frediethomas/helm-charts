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


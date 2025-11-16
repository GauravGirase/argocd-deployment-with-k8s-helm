
resource "helm_release" "argocd" {
  name = "argocd"

  repository = "https://argoproj.github.io/argo-helm"
  chart = "argo-cd"
  namespace = "argocd"
  create_namespace = true
  version = "3.35.4"  # version of helm chart

  values = [file("values/argocd.yaml")] # to override the default values of helm chart configuration
}
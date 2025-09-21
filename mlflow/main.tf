# Створення namespace для MLflow
resource "kubernetes_namespace" "mlflow" {
  metadata {
    name = var.mlflow_namespace
  }
}

# ArgoCD Application для MLflow
resource "kubernetes_manifest" "mlflow_application" {
  manifest = {
    apiVersion = "argoproj.io/v1alpha1"
    kind       = "Application"
    metadata = {
      name      = var.mlflow_namespace
      namespace = var.argocd_namespace
    }
    spec = {
      project = "default"

      source = {
        repoURL        = var.mlflow_repo_url
        targetRevision = var.mlflow_repo_branch
        path           = var.mlflow_repo_path
      }
      
      destination = {
        server    = "https://kubernetes.default.svc"
        namespace = var.mlflow_namespace
      }
      
      syncPolicy = {
        automated = {
          prune    = true
          selfHeal = true
        }
        syncOptions = [
          "CreateNamespace=true"
        ]
      }
    }
  }

  depends_on = [
    # helm_release.argocd, 
    kubernetes_namespace.mlflow]
}



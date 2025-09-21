variable "mlflow_repo_url" {
  description = "Git repository URL for MLflow manifests"
  type        = string
  default     = "https://github.com/blacklightsun/goit-mlflow-gitops.git"
}

variable "mlflow_repo_branch" {
  description = "Git repository branch for MLflow manifests"
  type        = string
  default     = "main"
}

variable "mlflow_namespace" {
  description = "Kubernetes namespace for MLflow"
  type        = string
  default     = "mlflow"
}   

variable "mlflow_repo_path" {
  description = "Git repository path for MLflow manifests"
  type        = string
  default     = "mlflow"
}

variable "argocd_namespace" {
  description = "Kubernetes namespace for ArgoCD"
  type        = string
  default     = "argocd"
}   
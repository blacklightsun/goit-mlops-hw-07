output "mlflow_service_access" {
  description = "Command to access MLflow service"
  # value       = "kubectl port-forward svc/mlflow-service -n mlflow 5000:5000"
  value       = <<EOT
"Перевірка, чи працює MLflow
kubectl get pods -n mlflow

Форвард порту MLflow сервісу
kubectl port-forward svc/mlflow-service -n mlflow 5000:5000

Тепер відкрийте браузер на http://localhost:5000"
EOT
}
variable "nodes" {
  description = "Кількість нод"
  default     = 2
}

variable "cpus" {
  description = "CPU на ноду"
  default     = 2
}

variable "memory" {
  description = "RAM на ноду (MB)"
  default     = 4096
}

variable "disk_size" {
  description = "Disk size на ноду (GB)"
  default     = 12
}

variable "driver" {
  description = "Драйвер Minikube"
  default     = "virtualbox"
}

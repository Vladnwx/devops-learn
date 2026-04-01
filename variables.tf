# Файл с описанием переменных

variable "proxmox_api_url" {
  description = "URL API Proxmox (например, https://192.168.0.10)"
  type        = string
}

variable "password" {
  description = "Пароль пользователя Proxmox"
  type        = string
  sensitive   = true
}

variable "ssh_key" {
  description = "Ваш публичный SSH ключ для доступа в ВМ"
  type        = string
}

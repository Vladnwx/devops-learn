# Файл с переменными

variable "ssh_key" {
  description = "My SSH public key"
  type        = string
  default     = "ssh-rsa ..." # Замените на ваш ключ
}

variable "password" {
  description = "my PVE password"
  type        = string
  default     = "ваш_пароль" # Замените на пароль от Proxmox
}

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

variable "ssh_keys" {
  description = "Список публичных SSH ключей"
  type        = list(string)
  default = [
    "sk-ssh-ed25519@openssh.com AAAAGnNrLXNzaC1lZDI1NTE5QG9wZW5zc2guY29tAAAAIIE24p25plydthi5LJH2cA9lMl81mowohsJ9ebXdt9xYAAAABHNzaDo= yubikey-home-servers",
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIM1EJ8xftvnwyjlbNQIIxvDcKUQTKWPz7K4wwWnLSkyI nas-ansible@nas",
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDRk43+wJyIiEZ4924k505vLzb3SfJMmG5rf1FOK5vuk galaxys23"
  ]
}

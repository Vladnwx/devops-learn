# Секция установки провайдера
terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "3.0.1-rc6"
    }
  }
}

# Секция подключения к кластеру/ноде
provider "proxmox" {
  pm_tls_insecure = true
  pm_api_url      = var.proxmox_api_url
  pm_password     = var.password
  pm_user         = "root@pam"
}

#секция установки провайдера
terraform {
 required_providers {
   proxmox = {
     source  = "Telmate/proxmox"
     version = "3.0.1-rc6"
   }
 }
}

#секция подключения к кластеру/ноде
provider "proxmox" {
 pm_tls_insecure = true
 pm_api_url      = "https://ip-сервера/api2/json"
 pm_password     = var.password
 pm_user         = "root@pam"
}

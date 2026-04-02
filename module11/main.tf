resource "proxmox_vm_qemu" "gitlab" {
  vmid        = 180
  name        = "gitlab"
  target_node = "pve"
  agent       = 1
  cpu {
    cores = 2
    type  = "host" # Рекомендуется для лучшей производительности (или "x86-64-v2-AES")
  }
  memory           = 2048
  boot             = "order=scsi0"
  clone            = "Ubuntu-24.04"
  full_clone       = true
  scsihw           = "virtio-scsi-single"
  vm_state         = "running"
  automatic_reboot = true

  # Настройки Cloud-Init
  cicustom   = "vendor=local:snippets/qemu-guest-agent.yml"
  ciupgrade  = true
  ipconfig0  = "ip=192.168.0.180/24,gw=192.168.0.1"
  skip_ipv6  = true
  ciuser     = "vladimir"
  cipassword = "1"
  sshkeys    = join("\n", var.ssh_keys)

  serial {
    id = 0
  }

  disks {
    scsi {
      scsi0 {
        disk {
          storage = "local-lvm"
          size    = "32G"
        }
      }
    }
    ide {
      ide2 {
        cloudinit {
          storage = "local-lvm"
        }
      }
    }
  }

  network {
    id     = 0
    bridge = "vmbr0"
    model  = "virtio"
  }
}

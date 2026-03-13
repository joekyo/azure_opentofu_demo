#cloud-config
packages:
  - nginx

runcmd:
  - [ systemctl, enable, --now, nginx ]
  - [ bash, -lc, "ufw allow {{ nginx_port }}" ]

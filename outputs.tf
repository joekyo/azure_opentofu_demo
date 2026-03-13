output "public_ip" {
  description = "Public IPv4 address of the VM."
  value       = azurerm_public_ip.pip.ip_address
}

output "ssh_command" {
  description = "Example SSH command to connect to the VM."
  value       = "ssh ${var.admin_username}@${azurerm_public_ip.pip.ip_address}"
}

output "nginx_url" {
  description = "URL to access the NGINX web server."
  value       = "http://${azurerm_public_ip.pip.ip_address}"
}

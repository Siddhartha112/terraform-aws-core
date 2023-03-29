output "instance_app_server_public_ip" {
  value = aws_instance.app-server.*.public_dns
}
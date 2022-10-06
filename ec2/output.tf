output "dns_public_ec2" {
  value = aws_instance.ec2.public_dns
  description = "DNS público para conexão SSH na instancia"
}
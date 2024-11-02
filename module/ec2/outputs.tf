output "public_instance_public_ip" {
  description = "Public instance's IP"
  value       = aws_instance.public.public_ip
}

output "private_instance_private_ip" {
  description = "Private instance's IP"
  value       = aws_instance.private.private_ip
}

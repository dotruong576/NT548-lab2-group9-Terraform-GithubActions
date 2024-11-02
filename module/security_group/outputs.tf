output "public_security_group_id" {
  description = "The ID of the public security group"
  value       = try(aws_security_group.public_ec2_sg.id, null)
}

output "private_security_group_id" {
  description = "The ID of the private security group"
  value       = try(aws_security_group.private_ec2_sg.id, null)
}
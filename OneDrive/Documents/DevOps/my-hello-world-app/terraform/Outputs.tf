# Output the public IP address of the EC2 instance
output "instance_public_ip" {
  description = "The public IP address of the EC2 instance."
  value       = aws_instance.hello_world_app.public_ip
}

# Output the public DNS of the EC2 instance
output "instance_public_dns" {
  description = "The public DNS name of the EC2 instance."
  value       = aws_instance.hello_world_app.public_dns
}

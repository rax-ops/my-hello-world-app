# AWS Region
variable "aws_region" {
  description = "The AWS region to deploy resources in."
  type        = string
  default     = "us-east-1" # Change to your preferred region
}

# EC2 Instance Type
variable "instance_type" {
  description = "The type of EC2 instance to launch."
  type        = string
  default     = "t2.micro" # Free tier eligible
}

# EC2 Key Pair Name
variable "key_pair_name" {
  description = "The name of the EC2 Key Pair to use for SSH access."
  type        = string
  # You MUST create a key pair in the AWS console and provide its name here
  # Example: default = "my-ec2-key"
}

# Docker Hub Username (used by Jenkins and EC2 user data if needed)
variable "docker_username" {
  description = "Your Docker Hub username."
  type        = string
  # Example: default = "your-dockerhub-username"
}

# Docker Hub Password/Token (used by Jenkins and EC2 user data if needed)
# WARNING: Storing secrets in variables.tf is NOT recommended for production.
# Use Terraform Cloud, AWS Secrets Manager, or environment variables instead.
variable "docker_password" {
  description = "Your Docker Hub password or access token."
  type        = string
  sensitive   = true # Mark as sensitive to prevent logging
  # Example: default = "your-dockerhub-password"
}

# Docker Image Name (e.g., your-dockerhub-username/hello-world-app:latest)
variable "docker_image_name" {
  description = "The full name of the Docker image to build and run (e.g., dockerhub_username/image_name:tag)."
  type        = string
  # Example: default = "your-dockerhub-username/hello-world-app:latest"
}

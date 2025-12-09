variable "aws_region" {
  description = "AWS region for resources"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Project name for resource tagging"
  type        = string
  default     = "jenkins-autoscaling"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "agent_instance_type" {
  description = "EC2 instance type for Jenkins agents"
  type        = string
  default     = "t3.micro"
}

variable "agent_ami_id" {
  description = "AMI ID for Jenkins agents (Ubuntu)"
  type        = string
  default     = "ami-0c02fb55956c7d316" # Ubuntu 22.04 LTS
}

variable "enable_spot_instances" {
  description = "Enable spot instances for cost savings"
  type        = bool
  default     = false
}

variable "jenkins_master_cidr" {
  description = "CIDR block of Jenkins master for SSH access"
  type        = string
  default     = "0.0.0.0/0" # Update with your Jenkins master IP
}

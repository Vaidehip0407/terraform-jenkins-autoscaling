output "launch_template_id" {
  description = "Launch template ID for Jenkins EC2 plugin"
  value       = module.launch_template.lt_id
}

output "launch_template_name" {
  description = "Launch template name"
  value       = module.launch_template.lt_name
}

output "agent_security_group_id" {
  description = "Security group ID for Jenkins agents"
  value       = module.security_groups.agent_sg_id
}

output "instance_profile_name" {
  description = "IAM instance profile name for agents"
  value       = module.iam.instance_profile_name
}

output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "Public subnet IDs for agents"
  value       = module.vpc.public_subnet_ids
}

output "key_pair_name" {
  description = "SSH key pair name"
  value       = module.keypair.key_name
}

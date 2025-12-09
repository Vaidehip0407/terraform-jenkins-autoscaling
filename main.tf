module "vpc" {
  source = "./modules/vpc"

  project_name = var.project_name
  vpc_cidr     = var.vpc_cidr
}

module "security_groups" {
  source = "./modules/security-groups"

  project_name         = var.project_name
  vpc_id               = module.vpc.vpc_id
  jenkins_master_cidr  = var.jenkins_master_cidr
}

module "iam" {
  source = "./modules/iam"

  project_name = var.project_name
}

module "keypair" {
  source = "./modules/keypair"

  project_name = var.project_name
}

module "launch_template" {
  source = "./modules/launch-template"

  project_name          = var.project_name
  ami_id                = var.agent_ami_id
  instance_type         = var.agent_instance_type
  key_name              = module.keypair.key_name
  agent_sg_id           = module.security_groups.agent_sg_id
  instance_profile_name = module.iam.instance_profile_name
  enable_spot_instances = var.enable_spot_instances
}

# Jenkins Dynamic Auto-Scaling Agents on AWS EC2

Production-grade Terraform infrastructure for Jenkins auto-scaling EC2 agents.

## Architecture

Jenkins Master automatically launches EC2 agents when jobs start and terminates idle agents to save costs.

## Prerequisites

- AWS Account with appropriate permissions
- Terraform >= 1.0
- AWS CLI configured
- SSH key pair generated (`~/.ssh/id_rsa.pub`)

## Setup

1. **Initialize Terraform:**
   ```bash
   terraform init
   ```

2. **Review the plan:**
   ```bash
   terraform plan
   ```

3. **Apply infrastructure:**
   ```bash
   terraform apply
   ```

## Jenkins Configuration

After Terraform completes:

1. Install **Amazon EC2 Plugin** in Jenkins
2. Go to: Manage Jenkins → Manage Nodes & Clouds → Configure Clouds
3. Add Amazon EC2 cloud with the Launch Template ID from outputs
4. Configure agent template with label `aws-agent`
5. Set idle termination to 3-5 minutes

## Cost Optimization

- Agents auto-terminate after idle period
- Optional: Enable Spot Instances (80% cost reduction)
- Tag-based filtering ensures only managed instances

## Outputs

- `launch_template_id` - Use this in Jenkins EC2 plugin configuration
- `agent_security_group_id` - Security group for agents
- `instance_profile_name` - IAM profile for agents

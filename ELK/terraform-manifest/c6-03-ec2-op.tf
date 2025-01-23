output "ec2_instance_ids" {
  description = "EC2 instance ID"
  value       = module.ec2-instance.id
}


output "ec2-instance_public_ip" {
  description = "Public IP address ec2-instance instance"
  value       = module.ec2-instance.public_ip 
}

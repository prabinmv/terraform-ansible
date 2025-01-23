output "ec2_instance_ids" {
  description = "EC2 instance ID"
  value       = module.ec2_public.id
}


output "ec2_public_ip" {
  description = "Public IP address EC2 instance"
  value       = module.ec2_public.public_ip 
}

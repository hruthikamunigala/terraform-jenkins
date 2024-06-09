output "public_ip" {
 value       = aws_instance.Dove-Instance
 description = "Public IP Address of EC2 instance"
}

output "instance_id" {
 value       = aws_instance.Dove-Instance.id
 description = "Instance ID"
}
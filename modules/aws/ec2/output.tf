# 輸出 EC2 的公共 IP
output "public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.ec2.public_ip
}

# 輸出 EC2 的 ID
output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.ec2.id
}

# 輸出 EC2 的公共 DNS
output "public_dns" {
  description = "The public DNS of the EC2 instance"
  value       = aws_instance.ec2.public_dns
}


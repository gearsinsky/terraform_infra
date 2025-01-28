# 使用指定的 AMI ID 建立 EC2
resource "aws_instance" "ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_pair_name

  # 標籤
  tags = {
    Name = var.instance_name
  }
}


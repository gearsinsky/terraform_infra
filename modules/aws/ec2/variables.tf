# EC2 Instance 名稱
variable "instance_name" {
  description = "The name of the EC2 instance"
  type        = string
}

# AMI ID
variable "ami_id" {
  description = "The AMI ID to use for the instance"
  type        = string
}

# Instance 類型
variable "instance_type" {
  description = "The type of EC2 instance"
  type        = string
  default     = "t3.small" # 預設為 t3.small
}

# Key Pair 名稱
variable "key_pair_name" {
  description = "The name of the SSH Key Pair to associate with the instance"
  type        = string
}


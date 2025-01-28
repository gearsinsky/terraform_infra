resource "aws_instance" "prod_ec2" {
  ami                                  = "ami-0b20f552f63953f0e"    # 指定 AMI ID
  instance_type                        = "t3.small"                 # 指定機器類型
  key_name                             = "book"                     # 使用的 Key Pair 名稱
  associate_public_ip_address          = true                       # 是否自動分配公有 IP
  availability_zone                    = "ap-northeast-1a"          # 指定可用區域
  subnet_id                            = "subnet-05c13056765033843" # 指定子網 ID
  monitoring                           = false                      # 關閉詳細監控
  disable_api_stop                     = false                      # 允許 API 停止
  disable_api_termination              = false                      # 允許 API 終止
  ebs_optimized                        = true                       # 啟用 EBS 優化
  instance_initiated_shutdown_behavior = "stop"                     # 停止行為

  # 配置安全組
  vpc_security_group_ids = [
    "sg-0b2c6c49aaa64433e", # 替換為實際的安全組 ID
  ]

  # 標籤
  tags = {
    Name = "bookupdate"
  }

  # CPU 配置
  cpu_options {
    core_count       = 1
    threads_per_core = 2
  }

  # 容量預留
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  # 信用規範
  credit_specification {
    cpu_credits = "unlimited"
  }

  #  # Enclave 選項
  #  enclave_options {
  #    enabled = false
  #  }
  #
  #  # 維護選項
  #  maintenance_options {
  #    auto_recovery = "default"
  #  }
  #
  #  # 元數據配置
  #  metadata_options {
  #    http_endpoint               = "enabled"
  #    http_protocol_ipv6          = "disabled"
  #    http_put_response_hop_limit = 2
  #    http_tokens                 = "required"
  #    instance_metadata_tags      = "disabled"
  #  }
  #
  #  # 私有 DNS 名稱配置
  #  private_dns_name_options {
  #    enable_resource_name_dns_a_record    = true
  #    enable_resource_name_dns_aaaa_record = false
  #    hostname_type                        = "ip-name"
  #  }
  #
  #  # 根磁碟配置
  #  root_block_device {
  #    delete_on_termination = true
  #    volume_size           = 14
  #    volume_type           = "gp3"
  #    iops                  = 3000
  #    throughput            = 125
  #  }
}
module "ec2_instance" {
  source        = "../../../../modules/aws/ec2"
  for_each      = var.ec2_instances
  instance_name = each.value.instance_name
  ami_id        = each.value.ami_id        # 固定為指定的 AMI ID
  instance_type = each.value.instance_type # 指定 EC2 類型
  key_pair_name = each.value.key_pair_name # 替換為已存在的 Key Pair 名稱
}


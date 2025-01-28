# 定義 S3 Bucket
resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-state-${random_id.bucket_id.hex}" # 添加隨機 ID，保證名稱唯一

  # 使用 lifecycle 防止誤刪
  lifecycle {
    prevent_destroy = true
  }

  tags = {
    Name = "Terraform State Bucket"
  }
}

# 單獨啟用版本控制
resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.terraform_state.id

  versioning_configuration {
    status = "Enabled"
  }
}

# 生成隨機 ID，用於確保 bucket 名稱唯一
resource "random_id" "bucket_id" {
  byte_length = 4 # 產生隨機 8 位十六進制字串
}


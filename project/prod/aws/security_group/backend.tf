terraform {
  backend "s3" {
    bucket         = "terraform-state-8c780791" # 替換為 S3 Bucket 名稱
    key            = "terraform/aws/security-group/terrform.tfstate" # 存放 state 文件的路徑
    region         = "ap-northeast-1" # 替換為你的 S3 Bucket 區域
    encrypt        = true
  }
}


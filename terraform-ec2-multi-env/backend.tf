terraform {
  backend "s3" {
    bucket = "my-terraform-state-bucket"
    key    = "ec2/${terraform.workspace}/terraform.tfstate"
    region = "us-east-1"
  }
}
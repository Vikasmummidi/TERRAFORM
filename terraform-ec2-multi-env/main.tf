provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source        = "./modules/ec2-instance"
  ami           = var.ami
  instance_type = var.instance_type
  name          = "${terraform.workspace}-ec2"
  env           = terraform.workspace
}
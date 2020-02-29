# configure the AWS provider
provider "aws" {
  profile = var.profile
  region  = var.region
}

# create an EC2 instance
resource "aws_instance" "ec2-instance" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.vpc_security_group_ids]
  tags = {
    Name                        = var.tag-Name
    "Technical:ApplicationName" = var.tag-ApplicationName
    "Technical:Environment"     = var.tag-Environment
  }
}



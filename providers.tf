terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.aws_region
}

resource "aws_instance" "Dove-Instance" {
  ami                    = "ami-0d191299f2822b1fa"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"  
  key_name               = "dove-key"
  vpc_security_group_ids = ["sg-01ca67672cd0c3177"]
  tags = {
    Name    = "Dove-Instance"
    Project = "Dove"
  }
}

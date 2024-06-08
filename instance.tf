provider "aws" {
    region = "us-east-1"  
}

resource "aws_instance" "jenkinsserver" {
  ami                    = "ami-0e001c9271cf7f3b9"
  instance_type          = "t2.micro"
  tags = {
    Name = "my-dove"
  }
}


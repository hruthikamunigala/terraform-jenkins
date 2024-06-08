provider "aws" {
  region = "us-east-1"
  

}

resource "aws_instance" "intro" {
  ami                    = "ami-0d191299f2822b1fa"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1"
  key_name               = "dove-key"
  vpc_security_group_ids = ["sg-01ca67672cd0c3177"]
  tags = {
    Name    = "Dove-Instance"
    Project = "Dove"
  }
}

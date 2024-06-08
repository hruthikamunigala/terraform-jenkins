terraform {
  backend "s3" {
    bucket = "terra-vprofile-state2205"
    key    = "terraform/backend"
    region = "us-east-1"
  }
}
provider "aws" {
  profile = "testing"
  shared_credentials_file = "/home/ubuntu/.aws/credentials"
  region  = "ap-south-1"
}
resource "aws_instance" "terraform" {
  ami           = "ami-04bde106886a53080"
  instance_type = "t2.micro"
}

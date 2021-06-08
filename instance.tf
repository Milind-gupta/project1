provider "aws" {
  profile = "default"
  region  = "ap-south-1"
}
resource "aws_instance" "terraform" {
  ami           = "ami-04bde106886a53080"
  instance_type = "t2.micro"
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.44.0"
    }
  }
}
provider "hashicorp/aws" {
region = "ap-south-1"
}
resource "aws_instance" "terraform" {
ami           = "ami-04bde106886a53080"
instance_type = "t2.micro"
}

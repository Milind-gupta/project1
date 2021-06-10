#terraform {
  #required_providers {
    #aws = {
      #source = "hashicorp/aws"
      #version = "3.44.0"
    #}
  #}
#}
#provider "aws" {
#profile = "terraform"  
#region = "ap-south-1"
#}
#resource "aws_instance" "terraform" {
#ami           = "ami-04bde106886a53080"
#instance_type = "t2.micro"
#}
provider "aws" {
    profile = "default"
    region = "ap-south-1"
    }
    resource "aws_instance" "terraform" {
    ami = "ami-04bde106886a53080"
    instance_type = "t2.micro"
    key_name = aws_key_pair.project1.key_name
    provisioner "remote-exec" {
    connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("project1")
    host        = aws_instance.terraform.public_ip
  }
    inline = [
      "sudo apt update -y && upgrade -y",
      "sudo apt install software-properties-common -y",
      "sudo add-apt-repository --yes --update ppa:ansible/ansible",
      "sudo apt install ansible -y"
    ]
  }
}


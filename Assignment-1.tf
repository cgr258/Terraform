provider "aws" {
  region = "us-east-2"
    access_key = "*************"
    secret_key = "******************************"
}
resource "aws_instance" "assignment1" {
  ami = "ami-085f9c64a9b75eed5"
  instance_type = "t2.medium"
  key_name = "Gova-ohio-keypair"
  tags = {
    Name = "Terraform-Assgn1"
  }
}

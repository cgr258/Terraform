provider "aws" {
  region = "us-east-2"
    access_key = "***********"
    secret_key = "**********************************"
}
resource "aws_instance" "assignment2" {
  ami = "ami-085f9c64a9b75eed5"
  instance_type = "t2.medium"
  key_name = "Gova-ohio-keypair"
  tags = {
    Name = "Terraform-Assgn2"
  }
}
resource "aws_eip" "eip" {
  vpc = true
}
resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.Terraform-Assgn2.id
  allocation_id = aws_eip.eip.id
}

provider "aws" {
        alias = "NV"
        region = "us-east-1"
        access_key = "********"
        secret_key = "********************************"
}
provider "aws" {
        alias = "Ohio"
        region = "us-east-2"
        access_key = "**********"
        secret_key = "********************************"
}
resource "aws_instance" "assignment3-1" {
  provider = aws.NV
  ami = "ami-0e86e20dae9224db8"
  instance_type = "t2.medium"
  key_name = "gova-N.virginia.key"
  tags = {
    Name = "Hello-Virginia"
  }
}
resource "aws_instance" "assignment3-2" {
  provider = aws.Ohio
  ami = "ami-085f9c64a9b75eed5"
  instance_type = "t2.medium"
  key_name = "Gova-ohio-keypair"
  tags = {
    Name = "Hello-Ohio"
  }
}

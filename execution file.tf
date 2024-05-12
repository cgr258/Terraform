resource "aws_instance" "govainstance" {
ami = "ami-013e83f579886baeb"
instance_type = "t2.micro"
tags = {
Name = "Govaterraformexpo"
}
count = 3
user_data = file("/home/ec2filepath/gova.sh")
vpc_security_group_ids = [aws_security_group.main.id]
}


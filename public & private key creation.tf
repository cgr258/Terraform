resource "tls_private_key" "terraform_private_key" {
algorithm = "RSA"
rsa_bits = 4096
}

resource "aws_key_pair" "publickey" {
public_key = tls_private_key.terraform_private_key.public_key_openssh

provisioner "local-exec" {
command = <<-EOT
echo '${tls_private_key.terraform_private_key.private_key_pem}' > aws_key_pairs.pem
chmod 400 aws_key_pairs.pem
EOT
}
}





end




in instance block resource key_name = aws_key_pair.publickey.id

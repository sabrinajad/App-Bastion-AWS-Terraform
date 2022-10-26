resource "aws_instance" "bastion" {
  ami                    = var.ami
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["${module.network.allow_ssh}"]
  subnet_id              =  module.network.pub1
  availability_zone      = var.the_avzone1 
  key_name                    = aws_key_pair.aws_key.key_name
  associate_public_ip_address = true
  tags = {
    Name = "bastionec2"
  }
  provisioner "local-exec" {
    command = "echo ${self.public_ip} > ./ec2_public_ips"
  }
}



resource "aws_instance" "application" {
  ami                    = var.ami
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["${module.network.allow_3000-ssh}"]
  subnet_id              = module.network.prv1
  availability_zone      = var.the_avzone1
  key_name                    = aws_key_pair.aws_key.key_name
  associate_public_ip_address = false
  
  tags = {
    Name = "application"
  }
  provisioner "local-exec" {
    command = "echo ${self.public_ip} > ./ec2_public_ips"
  }
}


resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
resource "aws_key_pair" "aws_key" {
  key_name   = "terraform"
  public_key = tls_private_key.example.public_key_openssh
  provisioner "local-exec" {
    command = "echo '${tls_private_key.example.private_key_pem}' > ./terraform.pem"
  }
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.amiid.id
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.sg.id]

  tags = {
    Name = "frontend"
  }
  
  provisioner "remote-exec" {

    connection {
        type     = "ssh"
        user     = "Centos"
        password = "DevOps321"
        host     = self.public_ip
    }

    inline = [
      "sudo labauto ansible" ,
      "ansible-pull -i localhost, -U https://github.com/SRINU42/roboansible.git main.yml -e env=dev -e role_name=frontend"
    ]
  }
}


data "aws_ami" "amiid" {
  owners           = ["973714476881"]
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"

  }

resource "aws_security_group" "sg" {
  name        = "frontend"
  description = "Allow TLS inbound traffic"
 

  ingress {
    
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "frontend"
  }
}




provider "aws" {
  region = var.region
}


resource "aws_instance" "wg" {
  ami                    = data.aws_ami.ubuntu20_04.id
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.instance.id]
  key_name               = "aws2"
  # user_data              = file("docker_flask.sh")

  tags = {
    Name = "wg-vpn"
  }
}

resource "aws_security_group" "instance" {
  name = var.security_group_name
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  ingress {
    from_port   = 51820
    to_port     = 51820
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


terraform {
  backend "s3" {
    bucket = "ash16-terraform-state"
    key    = "app/dev/terraform.tfstate"
    region = "eu-central-1"
  }
}

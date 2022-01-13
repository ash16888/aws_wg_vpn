
data "aws_ami" "latest-amazon-linux" {
  owners      = ["amazon"]
  most_recent = true
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

data "aws_ami" "ubuntu20_04" {

  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"]
}

data "aws_ami" "RHEL8_latest" {

  most_recent = true

  filter {
    name   = "name"
    values = ["RHEL_HA-8*-x86_64-2-Hourly2-GP2"]
  }

  owners = ["309956199498"]
}

output "public_ip" {
  value       = aws_instance.example.public_ip
  description = "The public IP of the Instance"
}

output "public_dns" {
  value       = aws_instance.example.public_dns
  description = "The public DNS of the Instance"
}

output "sg_id" {
  value       = aws_security_group.instance.id
  description = "sg_id"
}

output "availability_zone" {
  value       = aws_instance.example.availability_zone
  description = "availability_zone"
}

output "latest-amazon-linux_ami_id" {
  value = data.aws_ami.latest-amazon-linux.id
}

output "ubuntu20_04_id" {
  value = data.aws_ami.ubuntu20_04.id
}

output "RHEL8_latest_id" {
  value = data.aws_ami.RHEL8_latest.id
}

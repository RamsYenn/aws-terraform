output "instance-private-ip" {
  value = "${aws_instance.ec2-instance.private_ip}"
}


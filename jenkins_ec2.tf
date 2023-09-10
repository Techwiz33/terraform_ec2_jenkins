resource "aws_instance" "ec2_jenkins" {

  ami = var.image_id
  instance_type = var.instance_type
  key_name = "jenkins_ssh_keys"
  vpc_security_group_ids = [aws_security_group.devops_security_group.id]
  associate_public_ip_address = true

  user_data = "${file("${path.root}/scripts/install_jenkins.sh")}"

  tags = {
    Name = "ec2_jenkins"

  }
}

output "ec2_Jenkins_IPAddress" {
  value = "${aws_instance.ec2_jenkins.public_ip}"
}
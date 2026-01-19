resource "aws_security_group" "allow_ssh" {
  name        = var.sg_name
  description = var.sg_description

  tags = var.tags
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.allow_ssh.id
  cidr_ipv4         = var.allowed_cidr
  from_port         = var.ssh_port
  ip_protocol       = var.protocol
  to_port           = var.ssh_port
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic" {
  security_group_id = aws_security_group.allow_ssh.id
  cidr_ipv4         = var.allowed_cidr
  ip_protocol       = "-1" # semantically equivalent to all ports
}



resource "aws_instance" "db" {
  count = length(var.instance_names)
  ami                     = var.image_id  # AMI of devops-practice image
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  instance_type           = var.instance_names[count.index] == "db" ? "t3.small" : var.instance_type
  tags = {
    Name = var.instance_names[count.index]
  }
}
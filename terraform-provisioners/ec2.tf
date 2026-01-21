resource "aws_instance" "db" {
  ami                     = data.aws_ami.ami_id.id  # AMI of devops-practice image
  vpc_security_group_ids = ["sg-0b70d31527cf71d32"]
  instance_type = "t3.micro"

 provisioner "local-exec" {
  command = "echo Running local-exec && echo ${self.private_ip} > private_ips.txt"
}

connection {
  type = "ssh"
  user = "ec2-user"
  password = "DevOps321"
  host = self.public_ip
}

provisioner "remote-exec" {
  inline = [
    "sudo dnf install ansible -y",
    "sudo dnf install nginx -y",
    "sudo systemctl start nginx"
  ]
}

}
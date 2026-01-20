resource "aws_instance" "db" {
  ami                     = data.aws_ami.ami_id.id  # AMI of devops-practice image
  instance_type           = var.instance_type 
  vpc_security_group_ids = ["sg-0b70d31527cf71d32"]

  tags = {
    Name = "db"
  }
  
}
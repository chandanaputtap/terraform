resource "aws_instance" "expense" {
  for_each = var.instance_names
  ami                     = data.aws_ami.ami_info.id # AMI of devops-practice image
  vpc_security_group_ids = ["sg-0b70d31527cf71d32"]
  instance_type = each.value

  tags = merge(
    var.common_tags,
    {
      Name = each.key
      Module = each.key
    }
  )
    
  }
  
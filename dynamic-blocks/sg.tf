resource "aws_security_group" "allow_ports" {
  name        = "allow_ports"
  description = "Allowing ports 22, 80, 8080 and 3306 inbound traffic and all outbound traffic"

  dynamic "ingress" {
    for_each = var.inbound_rules

    content {
        description = ingress.value["name"]
        from_port   = ingress.value["port"]
        to_port     = ingress.value["port"]
        protocol    = ingress.value["protocol"]
        cidr_blocks = ingress.value["allowed_cidr"]
    }
  }
    # Allow all outbound traffic (IPv4 + IPv6)
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "dynamic-ingress-sg"
  }


  }



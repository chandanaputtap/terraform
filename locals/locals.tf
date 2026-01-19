locals {
    ami_id = "ami-0220d79f3f480ecf5"
    instance_type = var.instance_name == "db" ? "t3.micro" : "t2.micro"
    tags = {
        Name = "locals"
    }
}
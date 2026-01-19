variable "sg_name" {
    default = "allow_ssh"
}

variable "sg_description" {
     default = "Allow ssh inbound traffic and all outbound traffic"
} 

variable "common_tags"  {
    default = {
        Project = "Expense"
        Environment = "Dev"
        Terraform = "true"
    }
}

variable "ssh_port"{
    default = 22
}

variable "protocol" {
    default = "tcp"
}

variable "allowed_cidr" {
    type = string
    default = "0.0.0.0/0"
}

variable "image_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
    description = "RHEL-9 AMI ID"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}


variable "instance_names" {
    type = list
    default = ["db", "backend", "frontend"]
}

variable "zone_id" {
    default = "Z0382050371AQIV6OTN4R"
}

variable "domain_name" {
    default = "jyochandu.online"
}
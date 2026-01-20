variable "instance_names" {
    type = map
    default = {
        db = "t3.small"
        frontend = "t3.micro"
        backend = "t3.micro"
    }
}

variable "common_tags" {
    type = map
    default =  {
        project = "Expense"
        Terraform = "true"
    }
}

variable "domain_name" {
    default = "jyochandu.online"
}

variable "zone_id" {
    default = "Z0382050371AQIV6OTN4R"
}
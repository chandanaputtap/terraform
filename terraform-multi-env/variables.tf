variable "instance_names" {
    type = map
    # default = {
    #     db-dev = "t3.small"
    #     backend-dev = "t3.micro"
    #     frontend-dev = "t3.micro"
    # }
}

variable "environment" {
    # default = "dev"
}

variable "common_tags" {
    type = map
    default = {
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
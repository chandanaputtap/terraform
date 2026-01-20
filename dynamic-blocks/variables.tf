variable "inbound_rules" {
    type = list
    default = [
        {
            name = "allow_ssh"
            port = 22
            allowed_cidr = ["0.0.0.0/0"]
            protocol = "tcp"
        },
        {
            name = "allow_tcp_8080"
            port = 8080
            allowed_cidr = ["0.0.0.0/0"]
            protocol = "tcp"
        },
        {
            name = "allow_tcp_80"
            port = 80
            allowed_cidr = ["0.0.0.0/0"]
            protocol = "tcp"
        },
        {
            name = "allow_sql"
            port = 3306
            allowed_cidr = ["0.0.0.0/0"]
            protocol = "tcp"
        }
    ]
}
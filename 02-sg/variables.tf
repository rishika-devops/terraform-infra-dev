variable "project_name" {
    default = "roboshop"
}
variable "environment" {
    default = "dev"
}
variable "common_tags" {
    default = {
        project = "roboshop"
        environment = "dev"
        terraform = "true"
    }
}
variable "mongodb_sg_ingress_rules" {
    default = [
    {
    description = "ssh from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    },
    {
    description = "ssh from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    },
    ]
}
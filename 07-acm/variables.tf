variable "common_tags" {
    default = {
        environment = "dev"
        project = "roboshop"
        terraform = "true"
    }
}
variable "project_name" {
    default = "roboshop"
}
variable "environment" {
    default = "dev"
}
variable "tags" {
    default = {
        Component = "acm"
    }
}
variable "zone_name" {
    default = "sowjanyaaws.online"
}
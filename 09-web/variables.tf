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
        Component = "web"
    }
}
variable "zone_name" {
    default = "sowjanyaaws.online"
}
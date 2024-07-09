data "aws_vpc" "default" {
  default = true
}
data "aws_subnet" "selected" {
    vpc_id = data.aws_vpc.default.id
    availability_zone = "us-east-1a"
}
output "vpc-info" {
    value = data.aws_subnet.selected.id
}
data "aws_ssm_parameter" "vpn_sg_id" {
    name = "/${var.project_name}/${var.environment}/vpn_sg_id"
}
data "aws_ami" "centos" {
  most_recent      = true
  owners           = ["973714476881"]

  filter {
    name   = "name"
    values = ["Centos-8-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
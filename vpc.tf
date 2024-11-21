resource "aws_vpc" "project1vpc" {
    cidr_block = "${var.vpc_cidr}"
    instance_tenancy = "default"
    tags = {
        Name = "Project1 VPC"
    }
  
}
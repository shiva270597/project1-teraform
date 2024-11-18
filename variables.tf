variable "vpc_cidr" {
    default = "10.0.0.0/16"
    description = "VPC CIDR Block"
    type = string
}
variable "public1_subnet" {
    default = "10.0.1.0/24"
    description = "Public1 Subnet CIDR Block"
    type = string
}
variable "public2_subnet" {
    default = "10.0.2.0/24"
    description = "Public2 Subnet CIDR Block"
    type = string
}
variable "private1_subnet" {
    default = "10.0.3.0/24"
    description = "Private1 Subnet CIDR Block"
    type = string
}
variable "private2_subnet" {
    default = "10.0.4.0/24"
    description = "Private2 Subnet CIDR Block"
    type = string
}

  

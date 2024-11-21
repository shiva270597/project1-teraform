resource "aws_subnet" "public-subnet-1" {
    vpc_id = aws_vpc.project1vpc.id
    cidr_block = "${var.public1_subnet}"
    availability_zone = "ap-south-1a"
    map_public_ip_on_launch = true
    tags = {
        Name = "web-subnet-1"
    }
  
}

resource "aws_subnet" "public-subnet-2" {
    vpc_id = aws_vpc.project1vpc.id
    cidr_block = "${var.public2_subnet}"
    availability_zone = "ap-south-1b"
    map_public_ip_on_launch = true
    tags = {
        Name = "web-subnet-2"
    }
}
resource "aws_subnet" "private-subnet-1" {
    vpc_id = aws_vpc.project1vpc.id
    cidr_block = "${var.private1_subnet}"
    availability_zone = "ap-south-1c"
    tags = {
        Name = "private-subnet-1"
    }
}

resource "aws_subnet" "private-subnet-2" {
    vpc_id = aws_vpc.project1vpc.id
    cidr_block = "${var.private2_subnet}"
    availability_zone = "ap-south-1a"
    tags = {
        Name = "private-subnet-2"
    }
}
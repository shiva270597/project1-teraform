resource "aws_route_table" "public-rt" {
    vpc_id = aws_vpc.project1vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.demogateway.id
    }
    tags = {
        Name = "Public Route Table"
    }
}

resource "aws_route_table_association" "public1-rt" {
    subnet_id = aws_subnet.public-subnet-1.id
    route_table_id = aws_route_table.public-rt.id
}

resource "aws_route_table_association" "public2-rt" {
    subnet_id = aws_subnet.public-subnet-2.id 
    route_table_id = aws_route_table.public-rt.id
}

resource "aws_route_table" "private-rt" {
    vpc_id = aws_vpc.project1vpc.id
    tags = {
        Name = "Private Route Table"
    }
}

resource "aws_route_table_association" "private1-rt" {
    subnet_id = aws_subnet.private-subnet-1.id
    route_table_id = aws_route_table.private-rt.id
}

resource "aws_route_table_association" "private2-rt" {
    subnet_id = aws_subnet.private-subnet-2.id
    route_table_id = aws_route_table.private-rt.id
}

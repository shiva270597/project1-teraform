resource "aws_internet_gateway" "demogateway" {
    vpc_id = aws_vpc.project1vpc.id
    tags = {
      "Name" = "demogateway"
    }
  
}
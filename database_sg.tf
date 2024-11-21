resource "aws_security_group" "database-sg" {
    name = "database-sg"
    description = "security group for database"
    vpc_id = aws_vpc.project1vpc.id
    tags = {
      "Name" = "database-sg"
    }
    ingress {
      description = "allow mysql"
      from_port = 3306
      to_port = 3306
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      security_groups = [aws_security_group.demosecuritygroup.id]
    }
    egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  
}
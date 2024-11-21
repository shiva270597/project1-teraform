resource "aws_db_subnet_group" "rds-grp" {
    name = "rds-grp"
    subnet_ids = [aws_subnet.private-subnet-2.id, aws_subnet.private-subnet-1.id]
tags = {
    Name = "rds-grp"
  }  
}
resource "aws_db_instance" "rds" {
    allocated_storage = 20
    storage_type = "gp2"
    engine = "mysql"
    engine_version = "5.7"
    instance_class = "db.t3.micro"
    db_name = "rds"
    username = "admin"
    password = "admin123"
    parameter_group_name = "default.mysql5.7"
    db_subnet_group_name = aws_db_subnet_group.rds-grp.name
    skip_final_snapshot = true
    publicly_accessible = false
    multi_az = true
    vpc_security_group_ids = [aws_security_group.database-sg.id]
    tags = {
        Name = "rds"
    }
}
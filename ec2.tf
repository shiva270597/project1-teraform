resource "aws_instance" "demoinstance1" {
    ami = "ami-0dee22c13ea7a9a67"
    instance_type = "t3.micro"
    count = 1
    key_name = "project1-key"
    subnet_id = aws_subnet.public-subnet-1.id
    vpc_security_group_ids = ["${aws_security_group.demosecuritygroup.id}"]
    associate_public_ip_address = true
    user_data = "${file("scripts/data1.sh")}"
    tags = {
        Name = "demoinstance1"
    }
  
}
resource "aws_instance" "demoinstance2" {
    ami = "ami-0dee22c13ea7a9a67"
    instance_type = "t3.micro"
    count = 1
    key_name = "project1-key"
    subnet_id = aws_subnet.public-subnet-2.id
    vpc_security_group_ids = ["${aws_security_group.demosecuritygroup.id}"]
    associate_public_ip_address = true
    user_data = "${file("scripts/data2.sh")}"
    tags = {
        Name = "demoinstance2"
    }
  
}
resource "aws_lb" "external-alb" {
    name = "External-LB"
    internal = false
    load_balancer_type = "application"
    security_groups = [aws_security_group.demosecuritygroup.id]
    subnets = [aws_subnet.public-subnet-1.id, aws_subnet.public-subnet-2.id]
}
resource "aws_lb_target_group" "target-alb" {
    name = "External-ALB-Target-Group"
    port = 80
    protocol = "HTTP"
    vpc_id = aws_vpc.project1vpc.id

}
resource "aws_lb_target_group_attachment" "attachment" {
    count = length(aws_instance.demoinstance1)
    target_group_arn = aws_lb_target_group.target-alb.arn
    target_id = aws_instance.demoinstance1[count.index].id
    port = 80
    depends_on = [aws_instance.demoinstance1]
}
resource "aws_lb_listener" "external-alb-listener" {
    load_balancer_arn = aws_lb.external-alb.arn
    port = "80"
    protocol = "HTTP"
    default_action {
        type = "forward"
        target_group_arn = aws_lb_target_group.target-alb.arn
    }
}
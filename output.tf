output "alb_endpoint" {
    description = "The DNS name of the load balancer"
    value = aws_lb.external-alb.dns_name
}

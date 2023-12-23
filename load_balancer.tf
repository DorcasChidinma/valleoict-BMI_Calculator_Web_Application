# Create a load balancer
resource "aws_lb" "internet-facing" {
  name            = "loadbalancer"
  subnets         = aws_subnet.public[*].id
  security_groups = [aws_security_group.sg.id]
  internal        = false
}

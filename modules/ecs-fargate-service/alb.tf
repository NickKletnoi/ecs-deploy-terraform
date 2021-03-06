 resource "aws_lb" "lb" {
  name               = "${var.project}-${var.environment}"
  load_balancer_type = "application"
  internal           = false
  subnets          = ["subnet-0c48edfa3ada88bab","subnet-00c835f874cd32dbd"]


  security_groups = ["sg-0541729b9d6cc290d"]
}


resource "aws_lb_listener" "lb_listener" {
  load_balancer_arn = aws_lb.lb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
   type             = "forward"
    target_group_arn = aws_lb_target_group.app.arn
  }
}


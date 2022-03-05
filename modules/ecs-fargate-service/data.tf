data "aws_caller_identity" "current" {}


data "aws_subnet_ids" {
 vpc_id = "vpc-0d9f4187edd1bbd6b"
}


data "aws_availability_zones" "zones" {
  state = "available"
}

data "aws_caller_identity" "current" {}

data "aws_vpc" {
  id = "vpc-0d9f4187edd1bbd6b"
}

data "aws_subnet_ids" "public" {
  vpc_id = data.aws_vpc.id
 tags = {
    Name = "*Public*"
  }
}


data "aws_availability_zones" "zones" {
  state = "available"
}

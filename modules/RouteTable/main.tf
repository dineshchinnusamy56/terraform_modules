resource "aws_route_table" "rtable" {
  vpc_id       = var.vpc_id

  route {
    cidr_block = var.cidr
    gateway_id = var.igw_id 
  }

  tags       = {
    Name = "route table using terraform"
  }
}

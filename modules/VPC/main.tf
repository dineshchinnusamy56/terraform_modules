resource "aws_vpc" "vpc" {
    cidr_block   = var.vpc_cidr
    tags = {
      Name    = var.vpc_tag_name
    }
}


# resource "aws_internet_gateway" "public_internet_gateway" {
#   vpc_id = aws_vpc.vpc.id
#   tags = {
#     Name = var.igw_tag_name
#   }
# }
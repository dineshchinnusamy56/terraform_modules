
# Minimal configuration and code required to create "Internet Gateway"
resource "aws_internet_gateway" "igw" {
  vpc_id = var.vpc_id
  tags = {
    Name = var.igw_tag_name
  }
}
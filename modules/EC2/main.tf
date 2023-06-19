
# Minimal Configuration and code required to create a ec2 instace
resource "aws_instance" "D-ec2" {
    ami = var.ami 
    instance_type = var.ec2_instance_type 
    tags = {
        Name = var.ec2_tag_name
    }
}


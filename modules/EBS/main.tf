# Create a ebs volume in aws
resource "aws_ebs_volume" "volume" {
    availability_zone = var.az
    size = var.size
    tags = {
        Name = "terraformTesting"
    }    
}

# attach a volume to a instance
resource "aws_volume_attachment" "ebsAttach" {

    device_name = "/dev/sdh"
    volume_id = aws_ebs_volume.volume.id
    
#   instance id cannot be same all the time. so we require this from user
    instance_id =var.instance_id

}
variable "ami" {
   description = "ami id"
   type        = string
   default     = "ami-0767046d1677be5a0"
}

variable "ec2_instance_type" {
   description = "ec2 instance type"
   type        = string
   default     = "t2.micro"
}

variable "ec2_tag_name" {
   description = "name of the tag"
  type        = string
  default     = ""
}
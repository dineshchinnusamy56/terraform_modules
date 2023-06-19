variable "vpc_cidr" {
  type        = string
  description = "CIDR values"
  default     = "10.0.0.0/16"
}

variable "vpc_tag_name" {
   description = "name of the tag"
  type        = string
  default     = "vpc"
}

variable "igw_tag_name" {
   description = "name of the tag"
  type        = string
  default     = "d-igw"
}
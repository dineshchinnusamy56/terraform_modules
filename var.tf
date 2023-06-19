variable "aws_region" {
  description = "name of the region"
  type        = string
  default     = "eu-central-1"
}

variable "aws_access_key" {
  description = "access_key"
  type        = string
  default     = "AKIAWWACO5SD7WUOWLZF"
}

variable "aws_secret_key" {
  description = "secret_key"
  type        = string
  default     = "/R9EQYCoXfOaBHd9G6vfvbU2L6hourVho4el//Rb"
}
variable "cidr" {
  type        = string
  default     = "0.0.0.0/0"
}
variable "aws_region" {
  description = "name of the region"
  type        = string
  default     = "eu-central-1"
}

variable "aws_access_key" {
  description = "access_key"
  type        = string
  default     = "********"
}

variable "aws_secret_key" {
  description = "secret_key"
  type        = string
  default     = "*****"
}
variable "cidr" {
  type        = string
  default     = "0.0.0.0/0"
}
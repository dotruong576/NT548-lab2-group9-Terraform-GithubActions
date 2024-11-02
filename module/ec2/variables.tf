variable "ami_id" {
  description = "ID of Amazon Machine Image (AMI)"
  type        = string
}

variable "key_name" {
  description = "SSH key name"
  type        = string
}

variable "public_subnet_id" {
  description = "ID of the public subnet"
  type        = string
  default     = ""
}

variable "private_subnet_id" {
  description = "ID of the private subnet"
  type        = string
  default     = ""
}

variable "public_sg" {
  description = "ID of the public security group"
  type        = string
  default     = ""
}

variable "private_sg" {
  description = "ID of the private security group"
  type        = string
  default     = ""
}

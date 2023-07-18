variable "ami_id" {
  description = "ID of the desired AMI"
  type        = string
  default     = "ami-0c94855ba95c71c99" 
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.micro" 
}

variable "instance_name" {
  description = "Name of the instance"
  type        = string
  default     = "skilja instance" 
}

variable "instance_key_name" {
  description = "Key name for the instance"
  type        = string
  default     = "skilja" 
}
variable "vpc_cidr_block" {
  description = "CIDR Block for vpc"
  default     = "10.0.0.0/16"
}

variable "public_subnet1_cidr_block" {
  description = "CIDR Block for Public Subnet 1"
  default     = "10.0.1.0/24"
}


variable "ami" {
  description = "ami ubuntu"
  default     = "ami-0e86e20dae9224db8"
}


variable "instance_type" {
  description = "ami ubuntu_instance_type"
  default     = "t2.micro"
}

variable "region" {
  description = "aws provider"
  default     = "us-east-1"
}

variable "key_name" {
  description = "key_name"
  default     = "oluchi"
}
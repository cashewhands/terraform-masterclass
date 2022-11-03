variable "region" {
  type        = string
  default     = "us-east-1"
  description = "The AWS Region"
}

variable "environment" {
  type        = string
  description = "The deployment environment"
}

variable "app_name" {
  type        = string
  description = "Application Name"
}


variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "key_name" {
  default = "pubkey"
}

variable "default_tags" {
  type        = map(string)
  description = "Default tags to apply to all resources"
}

variable "vpc_cidr" {
  description = "The CIDR block of the VPC"
  type        = string
}


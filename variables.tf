variable "region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnets_cidr" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "cantidad_ec2" {
  type    = number
  default = 2
}

variable "cantidad_nlb" {
  type    = number
  default = 2
}

variable "cantidad_s3" {
  type    = number
  default = 2
}
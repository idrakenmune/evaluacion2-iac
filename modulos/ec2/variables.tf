variable "instancia_count" {
  type        = number
  description = "Cantidad de instancias EC2"
}

variable "ami_id" {
  type    = string
  default = "ami-04b938437b69a2c9c"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "subnet_id" {
  type        = string
  description = "Subred donde se ubicarán"
}

variable "tags_comunes" {
  type    = map(string)
  default = {}
}
variable "vpc_cidr" {
  type        = string
  description = "Rango CIDR de la VPC"
}

variable "subnets_cidr" {
  type        = list(string)
  description = "Lista de CIDR para las subredes"
}

variable "tags_comunes" {
  type        = map(string)
  default     = {}
  description = "Tags heredados"
}
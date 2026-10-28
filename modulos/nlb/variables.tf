variable "nlb_count" {
  type        = number
  description = "Cantidad de Network Load Balancers"
}

variable "subnet_ids" {
  type        = list(string)
  description = "Subredes para el balanceador"
}

variable "tags_comunes" {
  type    = map(string)
  default = {}
}
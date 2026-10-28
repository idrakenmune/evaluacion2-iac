variable "s3_count" {
  type        = number
  description = "Cantidad de buckets S3"
}

variable "identificador_unico" {
  type        = string
  description = "Cadena random para garantizar nombre único"
}

variable "tags_comunes" {
  type    = map(string)
  default = {}
}
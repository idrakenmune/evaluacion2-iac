locals {
  nombre_modulo = "vpc-red"
}

resource "aws_vpc" "this" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = merge(var.tags_comunes, {
    Name = "${var.tags_comunes["Prefijo"]}-${local.nombre_modulo}"
  })
}

# Creación repetitiva con for_each usando toset()
resource "aws_subnet" "this" {
  for_each          = toset(var.subnets_cidr)
  vpc_id            = aws_vpc.this.id
  cidr_block        = each.value
  availability_zone = "us-east-1a"

  tags = merge(var.tags_comunes, {
    Name = "${var.tags_comunes["Prefijo"]}-subnet-${each.value}"
  })
}
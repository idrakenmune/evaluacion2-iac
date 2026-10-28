locals {
  nombre_nlb = "nlb"
}

# Creación repetitiva usando count
resource "aws_lb" "this" {
  count              = var.nlb_count
  name               = "${var.tags_comunes["Prefijo"]}-${local.nombre_nlb}-${count.index + 1}"
  internal           = true
  load_balancer_type = "network"
  subnets            = var.subnet_ids

  tags = merge(var.tags_comunes, {
    Name = "${var.tags_comunes["Prefijo"]}-${local.nombre_nlb}-${count.index + 1}"
  })
}
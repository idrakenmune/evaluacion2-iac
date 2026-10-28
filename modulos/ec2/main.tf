locals {
  nombre_ec2 = "instancia"
}

# Creación repetitiva usando count
resource "aws_instance" "this" {
  count         = var.instancia_count
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  tags = merge(var.tags_comunes, {
    Name = "${var.tags_comunes["Prefijo"]}-${local.nombre_ec2}-${count.index + 1}"
  })
}
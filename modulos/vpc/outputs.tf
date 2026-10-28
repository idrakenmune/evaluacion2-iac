output "vpc_id" {
  value = aws_vpc.this.id
}

output "subnet_ids" {
  # Expresión for para extraer los IDs creados con for_each
  value = [for s in aws_subnet.this : s.id]
}
output "nlb_dns_names" {
  value = aws_lb.this[*].dns_name
}
output "instance_ids" {
  # Splat expression [*] 
  value = aws_instance.this[*].id
}

output "bucket_names" {
  value       = aws_s3_bucket.this[*].bucket
  description = "Nombres de los buckets S3 creados"
}

output "bucket_arns" {
  value       = aws_s3_bucket.this[*].arn
  description = "ARNs de los buckets S3 creados"
}
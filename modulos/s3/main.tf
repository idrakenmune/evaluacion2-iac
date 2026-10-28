locals {
  tipo = "privado"
}

resource "aws_s3_bucket" "this" {
  count         = var.s3_count
  bucket        = "my-millaray-test-bucket-${local.tipo}-${var.identificador_unico}-${count.index + 1}"
  force_destroy = true

  tags = merge(var.tags_comunes, {
    Name    = "My S3 Bucket ${count.index + 1}"
    Purpose = "Evaluacion 2"
    Tipo    = local.tipo
  })
}

resource "aws_s3_bucket_public_access_block" "this" {
  count                   = var.s3_count
  bucket                  = aws_s3_bucket.this[count.index].id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
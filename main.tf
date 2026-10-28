# 1 VPC y 2 subredes
module "vpc" {
  source       = "./modulos/vpc"
  vpc_cidr     = var.vpc_cidr
  subnets_cidr = var.subnets_cidr
  tags_comunes = local.tags_globales
}

# 2 EC2 referenciando la primera subred creada por el módulo VPC
module "ec2" {
  source          = "./modulos/ec2"
  instancia_count = var.cantidad_ec2
  subnet_id       = module.vpc.subnet_ids[0]
  tags_comunes    = local.tags_globales
}

# 2 NLB referenciando la subred de la VPC
module "nlb" {
  source       = "./modulos/nlb"
  nlb_count    = var.cantidad_nlb
  subnet_ids   = [module.vpc.subnet_ids[0]]
  tags_comunes = local.tags_globales
}

# 2 S3 privados pasando el random mediante locals
# module "s3" {
#   source              = "./modulos/s3"
#   s3_count            = var.cantidad_s3
#   identificador_unico = random_id.randomness.hex
#   tags_comunes        = local.tags_globales
# }
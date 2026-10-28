output "vpc_id_final" {
  value = module.vpc.vpc_id
}

output "subnets_finales" {
  value = module.vpc.subnet_ids
}

output "ec2_instancias" {
  value = module.ec2.instance_ids
}

output "nlb_dns" {
  value = module.nlb.nlb_dns_names
}

#output "s3_nombres" {
 # value = module.s3.bucket_names
#}
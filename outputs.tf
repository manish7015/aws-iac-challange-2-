# vpc ids in region
output "vpc_ids_in_selected_region" { value = data.aws_vpcs.vpc_id.ids }

# subnets ids in each Azs
output "subnets_in_azs" {
  value = local.availability_zone_subnets
}

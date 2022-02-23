
# vpc ids in region
output "vpc_ids_in_selected_region" { value = data.aws_vpcs.vpc_id.ids }

# 

# subnets in az-1
output "subnets_in_az-1" {
  value = { for subnet in data.aws_subnet.az-1 : subnet.id => subnet.availability_zone }
}



# subnets in az-2
output "subnets_in_az-2" {
  value = { for subnet in data.aws_subnet.az-2 : subnet.id => subnet.availability_zone }
}


# subnets in az-3
output "subnets_in_az-3" {
  value = { for subnet in data.aws_subnet.az-3 : subnet.id => subnet.availability_zone }
}


# subnets in az-4
output "subnets_in_az-4" {
  value = { for subnet in data.aws_subnet.az-4 : subnet.id => subnet.availability_zone }
}


# subnets in az-5
output "subnets_in_az-5" {
  value = { for subnet in data.aws_subnet.az-5 : subnet.id => subnet.availability_zone }
}


# subnets in "az-6
output "subnets_in_az-6" {
  value = { for subnet in data.aws_subnet.az-6 : subnet.id => subnet.availability_zone }
}


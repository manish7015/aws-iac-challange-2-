
# Fetching vpc ids for provided regions 

data "aws_vpcs" "vpc_id" {}


# Filtering available subnets in provided vpc
data "aws_subnets" "iac-2" {
  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }

}

data "aws_subnet" "iac-2" {
  for_each = toset(data.aws_subnets.iac-2.ids)
  id       = each.value

}

# locals to store and map availability zone name to a list of one or more subnet ids
locals {
  availability_zone_subnets = {
for s in data.aws_subnet.iac-2 : s.availability_zone => s.id...

  }
}

# provider with region 

provider "aws" {

region = var.region

    }
  


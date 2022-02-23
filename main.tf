
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

# Filtering available subnets in AZ "az-1"

data "aws_subnets" "az-1" {

  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }

  filter {
    name   = "availabilityZone"
    values = [var.az["az-1"]]
  }

}

data "aws_subnet" "az-1" {

  for_each = toset(data.aws_subnets.az-1.ids)
  id       = each.value

}

# Filtering available subnets in AZ "az-2"

data "aws_subnets" "az-2" {

  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }

  filter {
    name   = "availabilityZone"
    values = [var.az["az-2"]]
  }

}

data "aws_subnet" "az-2" {

  for_each = toset(data.aws_subnets.az-2.ids)
  id       = each.value

}

# Filtering available subnets in AZ "az-3"

data "aws_subnets" "az-3" {

  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }

  filter {
    name   = "availabilityZone"
    values = [var.az["az-3"]]
  }

}

data "aws_subnet" "az-3" {

  for_each = toset(data.aws_subnets.az-3.ids)
  id       = each.value

}

# Filtering available subnets in AZ "az-4"

data "aws_subnets" "az-4" {

  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }

  filter {
    name   = "availabilityZone"
    values = [var.az["az-4"]]
  }

}

data "aws_subnet" "az-4" {

  for_each = toset(data.aws_subnets.az-4.ids)
  id       = each.value

}


# Filtering available subnets in AZ "az-5"

data "aws_subnets" "az-5" {

  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }

  filter {
    name   = "availabilityZone"
    values = [var.az["az-5"]]
  }

}

data "aws_subnet" "az-5" {

  for_each = toset(data.aws_subnets.az-5.ids)
  id       = each.value

}

# Filtering available subnets in AZ "az-6"

data "aws_subnets" "az-6" {

  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }

  filter {
    name   = "availabilityZone"
    values = [var.az["az-6"]]
  }

}

data "aws_subnet" "az-6" {

  for_each = toset(data.aws_subnets.az-6.ids)
  id       = each.value

}

# provider with region 

provider "aws" {

region = var.region

    }
  



# Input vars region 

variable "region" {
  default = "eu-west-1"
}

# Input vars vpc id
variable "vpc_id" {
  default = "vpc-044306c8cbd56c315"
}

# Input vars AZs

variable "az" {

  type = map(any)
  default = {
    az-1 = "eu-west-1a"
    az-2 = "eu-west-1b"
    az-3 = "eu-west-1c"
    az-4 = "eu-west-1d"
    az-5 = "eu-west-1e"
    az-6 = "eu-west-1f"

  }

}

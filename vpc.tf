
module "us_east_1_vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.8.1"  # Specify the version

  providers = {
    aws = aws.us_east_1
  }

  name                 = "us-east-1-vpc"
  cidr                 = var.cidr_block_us_east_1
  azs                  = ["us-east-1a"]
  public_subnets       = [var.subnet_cidr_us_east_1]
  enable_dns_support   = true
  enable_dns_hostnames = true
  map_public_ip_on_launch = true
}

module "us_west_2_vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.8.1"  # Specify the version

  providers = {
    aws = aws.us_west_2
  }

  name                 = "us-west-2-vpc"
  cidr                 = var.cidr_block_us_west_2
  azs                  = ["us-west-2a"]
  public_subnets       = [var.subnet_cidr_us_west_2]
  enable_dns_support   = true
  enable_dns_hostnames = true
  map_public_ip_on_launch = true
}
module "ap_south_1_vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.8.1"  # Specify the version

  providers = {
    aws = aws.ap_south_1
  }

  name                 = "ap-south-1-vpc"
  cidr                 = var.cidr_block_ap_south_1
  azs                  = ["ap-south-1a"]
  public_subnets       = [var.subnet_cidr_ap_south_1]
  enable_dns_support   = true
  enable_dns_hostnames = true
  map_public_ip_on_launch = true
}
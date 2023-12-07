module "vpc" {
  source = "./module/vpc"
  vpc_cidr_block = var.vpc_cidr_block            # step 3:send the variable to module as input
}
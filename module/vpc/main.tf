resource "vpc" "main" {
  cidr_block = var.vpc_cidr_block                    #step5: access the variable in root module code
}
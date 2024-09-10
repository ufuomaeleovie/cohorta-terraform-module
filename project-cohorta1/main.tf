# Declare your cloud provider
provider "aws" {
  region = var.region
}

# Reference the module you will be buildinng from

module "myvpc" {
    source = "../module/vpc"
    region = var.region
    project_name = var.project_name
    vpc_cidr_block = var.vpc_cidr_block
    pubsub1_cidr_block = var.pubsub1_cidr_block
    pubsub2_cidr_block = var.pubsub2_cidr_block
    privsub1_cidr_block = var.privsub1_cidr_block
    privsub2_cidr_block = var.privsub2_cidr_block
    privsub3_cidr_block = var.privsub3_cidr_block
    privsub4_cidr_block = var.privsub4_cidr_block
}
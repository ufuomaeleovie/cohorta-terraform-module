# Reference the vpc module you created earlier. 
provider "aws" {
    region = var.region

}
module "vpc" {
    source              = "../module/vpc"
    region              = var.region
    project_name        = var.project_name
    vpc_cidr_block      = var.vpc_cidr_block
    pubsub1_cidr_block  = var.pubsub1_cidr_block
    pubsub2_cidr_block  = var.pubsub2_cidr_block
    privsub1_cidr_block = var.privsub1_cidr_block
    privsub2_cidr_block = var.privsub2_cidr_block
    privsub3_cidr_block = var.privsub3_cidr_block
    privsub4_cidr_block = var.privsub4_cidr_block

}

# Reference the Nat Gateway you created earlier
# module "natgw" {
#     source = "../module/natgw"
#     public_subnet_az1_id    = module.vpc.public_subnet_az1_id
#     public_subnet_az2_id    = module.vpc.public_subnet_az2_id
#     internet_gateway        = module.vpc.internet_gateway
#     vpc_id                  = module.vpc.vpc_id
#     private_app_subnet_az1  = module.vpc.private_app_subnet_az1
#     private_data_subnet_az1 = module.vpc.private_data_subnet_az1
#     private_app_subnet_az2  = module.vpc.private_app_subnet_az2
#     private_data_subnet_az2 = module.vpc.private_data_subnet_az2
# }

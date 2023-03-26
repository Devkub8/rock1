#configure aws provider
provider "aws" {
  region    = var.region
 # profile   = "terraform-user"
}

#create vpc//
module "vpc" {
  source                       = "./module/vpc"
  region                       = var.region
  project_name                 = var.project_name
  vpc_cidr                     = var.vpc_cidr
  public_subnet_az1       = var.public_subnet_az1
  public_subnet_az2       = var.public_subnet_az2
  private_app_subnet_az1  = var.private_app_subnet_az1
  private_app_subnet_az2  = var.private_app_subnet_az2  
  private_data_subnet_az1 = var.private_data_subnet_az1
  private_data_subnet_az2 = var.private_data_subnet_az2
 # vpc_id = module.vpc.vpc_id 
}

#create ec2.
module "ec2" {
  source = "./module/ec2"
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  vpc_id = module.vpc.vpc_id
  subnet_id = var.subnet_id

}

module "security_group" {
  source = "./module/security-groups"
  vpc_id = module.vpc.vpc_id
}

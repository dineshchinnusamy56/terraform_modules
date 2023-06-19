# Configuration for provider has been declared in the var.tf file change it if needed
provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
} 

/* modlues have the minimal configuration, if you have't
   pass any values to the modules it loads up from the default 
   values (only minimal configuration required for creating the resources)*/
module "aws_instance" {
    source = "./modules/EC2"   
}

module "aws_vpc" {
    source = "./modules/VPC"   
}
module "aws_subnet"{
    source ="./modules/Subnet"
    
    # sample cidr value
    cidr= var.cidr

    # If you're using already created vpc plaese change it here.
    vpc_id= module.aws_vpc.vpc_id

}
module "aws_ebs" {
    source = "./modules/EBS"  

    # If you're trying to attach ebs volume to already created instance, change it here
    instance_id= module.aws_instance.instance_id
}
module "aws_igw" {
    source ="./modules/IGW"

    # If you're using already created vpc, if needed change it here.
    vpc_id= module.aws_vpc.vpc_id
}

module "aws_route_table" {
    source ="./modules/RouteTable"
    # In our case we're trying to configure internet gateway.
    igw_id=module.aws_igw.igw_id
    vpc_id= module.aws_vpc.vpc_id
}
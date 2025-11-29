module "network" {
  source      = "./modules/network"
  project     = var.project
  component   = var.component
  environment = var.environment
  region      = var.region
  vpc_cidr    = var.vpc_cidr
  az_count    = var.az_count
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  enable_nat_per_az    = var.enable_nat_per_az
  access_cidr      = var.access_cidr
  tags                 = var.tags
}



# FRONTEND ECR REPOSITORY
module "ecr_frontend" {
  source = "./modules/ecr"
  name   = "frontend-repo"
}

# BACKEND ECR REPOSITORY
module "ecr_backend" {
  source = "./modules/ecr"
  name   = "backend-repo"
}

# DATABASE ECR REPOSITORY
module "ecr_database" {
  source = "./modules/ecr"
  name   = "database-repo"
}
##

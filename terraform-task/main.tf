module "networking" {
  source          = "./modules/networking"
  vpc_cidr        = var.vpc_cidr
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
  azs             = var.azs
}

module "storage" {
  source      = "./modules/storage"
  bucket_name = var.bucket_name
}

module "compute" {
  source        = "./modules/compute"
  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
  subnet_id     = module.networking.public_subnet_ids[0]
  iam_role      = module.storage.iam_role_name
}

module "container" {
  source       = "./modules/container"
  cluster_name = var.cluster_name
}

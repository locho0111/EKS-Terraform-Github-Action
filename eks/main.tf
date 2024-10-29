locals {
  org = "rick"
  env = var.env
}

module "eks" {
  source = "../module"

  env                           = var.env
  cluster-name                  = "${local.env}-${local.org}-${var.cluster-name}"
  vpc-name                      = "${local.env}-${local.org}-${var.vpc-name}"
  cidr_block                    = var.vpc-cidr-block
  igw-name                      = "${local.env}-${local.org}-${var.igw-name}"
  pub-sub-name                  = "${local.env}-${local.org}-${var.pub-sub-name}"
  pub-subnet-count              = var.pub-subnet-count
  pub-cidr-block                = var.pub-cidr-block
  pub-availability-zone         = var.pub-availability-zone
  pri-sub-name                  = "${local.env}-${local.org}-${var.pri-sub-name}"
  pri-subnet-count              = var.pri-subnet-count
  pri-cidr-block                = var.pri-cidr-block
  pri-availability-zone         = var.pri-availability-zone
  public-rt-name                = "${local.env}-${local.org}-${var.public-rt-name}"
  private-rt-name               = "${local.env}-${local.org}-${var.private-rt-name}"
  eip-name                      = "${local.env}-${local.org}-${var.eip-name}"
  ngw-name                      = "${local.env}-${local.org}-${var.ngw-name}"
  eks-sg-name                   = var.eks-sg-name
  is_eks_role_enabled           = true
  is_eks_nodegroup_role_enabled = true
  ondemand_instance_types       = var.ondemand_instance_types
  desired_capacity_on_demand    = var.desired_capacity_on_demand
  min_capacity_on_demand        = var.min_capacity_on_demand
  max_capacity_on_demand        = var.max_capacity_on_demand
  is-eks-cluster-enabled        = var.is-eks-cluster-enabled
  cluster-version               = var.cluster-version
  endpoint-private-access       = var.endpoint-private-access
  endpoint-public-access        = var.endpoint-public-access
  #spot_instance_types           = var.spot_instance_types
  #desired_capacity_spot         = var.desired_capacity_spot
  #min_capacity_spot             = var.min_capacity_spot
  #max_capacity_spot             = var.max_capacity_spot

  addons = var.addons
}
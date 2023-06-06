module "eks" {
  source          = "./modules/eks-cluster"
  cluster_name    = "fast-cluster"
  cluster_version = "1.24"
  vpc_id          = "vpc-05f3280426dbb4897"

  private_subnets = ["subnet-0ada0149011f19451", "subnet-0c38c9155898c08e3"]
  public_subnets  = ["subnet-05b5c0eaad2e9fe53", "subnet-0214a5af1a4d1ef0a"]
}

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.24"

  cluster_name    = "matchday-${var.environment}"
  cluster_version = var.eks_version

  vpc_id     = aws_vpc.this.id
  subnet_ids = aws_subnet.private[*].id

  cluster_endpoint_public_access = true
  enable_irsa                    = true

  eks_managed_node_groups = {
    default = {
      min_size       = var.node_min
      max_size       = var.node_max         # 10x marquee surge
      desired_size   = var.node_min
      instance_types = [var.node_instance]
      capacity_type  = "ON_DEMAND"
      labels         = { "matchday.io/pool" = "default" }
    }
    spot_burst = {
      min_size       = 0
      max_size       = 30
      desired_size   = 0
      instance_types = ["m6i.xlarge","m6i.2xlarge","m5.xlarge"]
      capacity_type  = "SPOT"
      labels         = { "matchday.io/pool" = "spot-burst" }
      taints = [{ key = "spot", value = "true", effect = "NO_SCHEDULE" }]
    }
    gpu = {
      min_size       = var.gpu_node_min
      max_size       = var.gpu_node_max
      desired_size   = var.gpu_node_min
      instance_types = [var.gpu_node_instance]
      capacity_type  = "ON_DEMAND"
      labels         = { "matchday.io/pool" = "gpu" }
      taints         = [{ key = "nvidia.com/gpu", value = "true", effect = "NO_SCHEDULE" }]
    }
  }

  cluster_addons = {
    coredns                = { most_recent = true }
    kube-proxy             = { most_recent = true }
    vpc-cni                = { most_recent = true }
    aws-ebs-csi-driver     = { most_recent = true }
  }
}

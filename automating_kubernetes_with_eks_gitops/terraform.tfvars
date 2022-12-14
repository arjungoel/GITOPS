aws_region            = "us-east-1"
default_tags = {
  primary_owner   = "Arjun Goel"
  secondary_owner = "Arjun Goel"
  project_name    = "eks-gitops-project"
}
cidr_block           = "172.31.0.0/16"
public_subnet_count  = 2
private_subnet_count = 2

cluster_name = "eks-test-cluster"
addons = [
  {
    name    = "vpc-cni"
    version = "v1.10.1-eksbuild.1"
  },
  {
    name    = "coredns"
    version = "v1.8.4-eksbuild.1"
  },
  {
    name    = "kube-proxy"
    version = "v1.21.2-eksbuild.2"
  }
]

cloudwatch_log_group_name  = "eks_cluster_cw_log_group"
cloudwatch_log_stream_name = "eks_cluster_cw_log_stream"
eks_service_role           = "eks_iam_service_role"
eks_workernode_role        = "eks_iam_worker_node_role"
resource "aws_cloudwatch_log_group" "cw_log_group" {
  name              = "/aws/eks/${var.cluster_name}/${var.cloudwatch_log_group_name}"
  retention_in_days = 7
}
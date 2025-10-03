resource "aws_ecr_repository" "repo" {
  name = "${var.cluster_name}-repo"
}

resource "aws_ecs_cluster" "cluster" {
  name = var.cluster_name
}

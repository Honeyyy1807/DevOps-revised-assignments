aws_region        = "us-east-1"
vpc_cidr          = "10.0.0.0/16"

public_subnets    = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnets   = ["10.0.101.0/24", "10.0.102.0/24"]

azs               = ["us-east-1a", "us-east-1b"]

bucket_name       = "my-private-bucket-12345"

ec2_ami           = "ami-0c55b159cbfafe1f0" # Example Amazon Linux 2 AMI
ec2_instance_type = "t3.micro"

cluster_name      = "my-ecs-cluster"

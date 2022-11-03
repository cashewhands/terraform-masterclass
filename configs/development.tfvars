app_name    = "Cashews"
environment = "development"
vpc_cidr    = "10.20.0.0/16"

public_subnets  = ["10.20.0.0/24", "10.20.1.0/24"]
private_subnets = ["10.20.2.0/24", "10.20.3.0/24"]
region          = "us-east-1"

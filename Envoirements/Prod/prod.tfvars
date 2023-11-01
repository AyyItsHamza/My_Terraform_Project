vpc_name = "prod-vpc"
vpc_cidr = "10.1.0.0/16"
public_subnet_cidr_blocks = ["10.1.0.0/24", "10.1.1.0/24"]
private_subnet_cidr_blocks = ["10.1.2.0/24", "10.1.3.0/24"]
availability_zones = ["us-east-1a", "us-east-1b"]
bucket_name = "prod-example-bucket"


instances = {
  "prod-instance-1" = {
    ami           = "ami-98765432"
    instance_type = "t2.large"
    name          = "prod-instance-1"
    subnet_type   = "public"
  }
  "prod-instance-2" = {
    ami           = "ami-23456789"
    instance_type = "t2.large"
    name          = "prod-instance-2"
    subnet_type   = "private"
  }
}

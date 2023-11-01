vpc_name = "dev-vpc"
vpc_cidr = "10.0.0.0/16"
public_subnet_cidr_blocks = ["10.0.0.0/24", "10.0.1.0/24"]
private_subnet_cidr_blocks = ["10.0.2.0/24", "10.0.3.0/24"]
availability_zones = ["us-east-1a", "us-east-1b"]
bucket_name = "dev-example-bucket"


instances = {
  "dev-instance-1" = {
    ami           = "ami-12345678"
    instance_type = "t2.micro"
    name          = "dev-instance-1"
    subnet_type   = "public"
  }
  "dev-instance-2" = {
    ami           = "ami-87654321"
    instance_type = "t2.micro"
    name          = "dev-instance-2"
    subnet_type   = "private"
  }
}

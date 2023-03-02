terraform {
  source = "git::git@github.com:shgulomov/aws-terraform.git//network"
}

inputs = {
  region = "us-east-1"
  vpc_name = "my-vpc"
  cidr_block = "10.0.0.0/16"
  public_subnet = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet = ["10.0.3.0/24","10.0.4.0/24"]
}
terraform {
    source = "git::git@github.com:shgulomov/aws-terraform.git//ec2"
}
dependency "vpc" {
  config_path = "${get_terragrunt_dir()}/../network"
}

inputs = {
  vpc_id                     = dependency.vpc.outputs.cloud_vpc.vpc_id
  private_subnet_ids         = dependency.vpc.outputs.cloud_vpc.private_subnet
}
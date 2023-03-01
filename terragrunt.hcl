# terragrunt.hcl

# Define the backend configuration for storing state files in S3
remote_state {
  backend = "s3"
  config = {
    bucket = "my-terraform-state-bucket"
    key    = "my-terraform-state-key"
    region = "us-west-2"
  }
}

# Use the module "ec2-instance" from the aws-terraform repository
terraform {
  source = "git::git@github.com:shgulomov/aws-terraform.git//ec2-instance//app?ref=v0.0.3"

  # Pass in input variables to the module
  inputs = {
    instance_type = "t2.micro"
    ami_id        = "ami-0c55b159cbfafe1f0"
    key_name      = "my-keypair"
    subnet_id     = "subnet-0123456789abcdef"
    vpc_id        = "vpc-0123456789abcdef"
  }
}
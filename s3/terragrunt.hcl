terraform {
  source = "git::git@github.com:shgulomov/aws-terraform.git//s3"
}

inputs = {
  bucket_name = "bucket_name"
  versioning = true
}
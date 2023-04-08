terraform {
  source = "git::git@github.com:apulijala/aws-vpc-network-terraform.git//modules?ref=v1.1.0"
}

generate "backend" {
  path = "s3-backend.tf"
  if_exists = "overwrite"
  contents = <<EOF
  terraform {
   backend "s3" {
      bucket = "terraform-datta-aws-vpc"
      key = "${path_relative_to_include()}/terraform.tfstate"
      region = "us-east-1"
      encrypt = true
    }
}
EOF
}
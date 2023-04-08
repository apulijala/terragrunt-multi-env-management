terraform {
  source = "git::git@github.com:apulijala/aws-vpc-network-terraform.git//modules?ref=v1.1.0"
}

include "root" {
  path = find_in_parent_folders()
}


inputs = {

  region_name = "us-east-1"
  public_az = ["us-east-1a", "us-east-1b"]
  private_az = ["us-east-1a", "us-east-1b"]
  environment = "Production"

}

provider "aws" {
  region = "us-east-2"
}

module "cap_ec2" {
  source = "github.com/sullivac/terraform-module-ec2"

  name = ""
  userdata = "${file(userdata.ps1)}"
}

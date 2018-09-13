provider "aws" {
  region = "us-east-2"
}

module "cap_ec2" {
  source = "github.com/sullivac/terraform-module-ec2"

  name                   = ""
  iam_instance_profile   = "${var.iam_instance_profile}"
  subnet_id              = "${var.subnet_id}"
  vpc_security_group_ids = "${var.vpc_security_group_ids}"
  key_name               = "${var.key_name}"
  user_data              = "${file("userdata.ps1")}"
}

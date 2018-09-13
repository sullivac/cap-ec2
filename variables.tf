variable "iam_instance_profile" {
  description = "IAM role to associate with these instances"
}

variable "subnet_id" {
  description = "Subnet id for the instances"
}

variable "vpc_security_group_ids" {
  description = "VPC security group ids for the instances"
}

variable "key_name" {
  description = "Key name for retrieving instance administrator passwords"
}

variable "instance_type" {
  description = "Type of the EC2 instance"
  default     = "t2.micro"
}

variable "ami_east_1" {
  description = "AMI ID for the EC2 instance for us-east-1 region"
  default     = "ami-08a0d1e16fc3f61ea"  
}
variable "ami_west_2" {
  description = "AMI ID for the EC2 instance for us-west-2 region"
  default     = "ami-0b20a6f09484773af"  
}
variable "ami_ap_south_1" {
  description = "AMI ID for the EC2 instance for ap-south-1 region"
  default     = "ami-0e1d06225679bc1c5"  
}

variable "cidr_block_us_east_1" {
  description = "CIDR block for the VPC in us-east-1"
  default     = "10.0.0.0/16"
}

variable "cidr_block_us_west_2" {
  description = "CIDR block for the VPC in us-west-2"
  default     = "10.1.0.0/16"
}
variable "cidr_block_ap_south_1" {
  description = "CIDR block for the VPC in ap-south-1"
  default     = "10.2.0.0/16"
}
variable "subnet_cidr_us_east_1" {
  description = "CIDR block for the subnet in us-east-1"
  default     = "10.0.1.0/24"
}

variable "subnet_cidr_us_west_2" {
  description = "CIDR block for the subnet in us-west-2"
  default     = "10.1.1.0/24"
}
variable "subnet_cidr_ap_south_1" {
  description = "CIDR block for the subnet in us-west-2"
  default     = "10.2.1.0/24"
}
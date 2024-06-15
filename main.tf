#------------------------------------------US-EAST-1------------------------------------------------------#
##creating key pair for ec2 instance in us-east-1 region and saving private key at local working directory
resource "tls_private_key" "us_east_1" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
resource "aws_key_pair" "us_east_1_key" {
  provider = aws.us_east_1
  key_name   = "us_east_1_key"
  public_key = tls_private_key.us_east_1.public_key_openssh
}
resource "local_file" "us_east_1_key" {
  content  = tls_private_key.us_east_1.private_key_pem
  filename = "${path.module}/us_east_1_key.pem"
}
##creating ec2 instance in us-east-1 region
resource "aws_instance" "us_east_1_instance" {
  provider          = aws.us_east_1
  ami               = var.ami_east_1
  instance_type     = var.instance_type
  key_name          = aws_key_pair.us_east_1_key.key_name
  subnet_id         = module.us_east_1_vpc.public_subnets[0]

  tags = {
    Name = "us-east-1-instance"
  }
}
#------------------------------------------US-WEST-2------------------------------------------------------#
##creating key pair for ec2 instance in us-west-2 region and saving private key at local working directory
resource "tls_private_key" "us_west_2" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
resource "aws_key_pair" "us_west_2_key" {
  provider = aws.us_west_2
  key_name   = "us_east_1_key"
  public_key = tls_private_key.us_west_2.public_key_openssh
}
resource "local_file" "us_west_2_key" {
  content  = tls_private_key.us_west_2.private_key_pem
  filename = "${path.module}/us_west_2_key.pem"
}
##creating ec2 instance in us-west-2 region
resource "aws_instance" "us_west_2_instance" {
  provider          = aws.us_west_2
  ami               = var.ami_west_2
  instance_type     = var.instance_type
  key_name          = aws_key_pair.us_west_2_key.key_name
  subnet_id         = module.us_west_2_vpc.public_subnets[0]

  tags = {
    Name = "us-west-2-instance"
  }
}
#------------------------------------------AP-SOUTH-1------------------------------------------------------#
##creating key pair for ec2 instance in ap-south-1 region and saving private key at local working directory
resource "tls_private_key" "ap_south_1" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
resource "aws_key_pair" "ap_south_1_key" {
  provider = aws.ap_south_1
  key_name   = "ap_south_1_key"
  public_key = tls_private_key.ap_south_1.public_key_openssh
}
resource "local_file" "ap_south_1_key" {
  content  = tls_private_key.ap_south_1.private_key_pem
  filename = "${path.module}/ap_south_1_key.pem"
}
##creating ec2 instance in ap-south-1 region
resource "aws_instance" "ap_south_1_instance" {
  provider          = aws.ap_south_1
  ami               = var.ami_ap_south_1
  instance_type     = var.instance_type
  key_name          = aws_key_pair.ap_south_1_key.key_name
  subnet_id         = module.ap_south_1_vpc.public_subnets[0]

  tags = {
    Name = "ap-south-1-instance"
  }
}
#--------------------------------------------------------------------------------------------------------------------#
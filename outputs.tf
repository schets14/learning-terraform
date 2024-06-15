output "us_east_1__ec2_public_ip" {
    description = "public ip of us_east_1_ec2_instance"
    value = aws_instance.us_east_1_instance.public_ip
    
}
output "us_west_2_ec2_public_ip" {
    description = "public ip of us_west_2_ec2_instance"
    value = aws_instance.us_west_2_instance.public_ip
}
output "ap_south_1_ec2_public_ip" {
    description = "public ip of ap_south_1_ec2_instance"
    value = aws_instance.ap_south_1_instance.public_ip
}
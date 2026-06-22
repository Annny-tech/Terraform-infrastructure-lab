module "ec2" {
    source = "../Instance-terraform"
    ami-id =  "ami-0b6d9d3d33ba97d99"
    aws_region = "us-east_1"
    instance_type = "t3.micro"
  
}
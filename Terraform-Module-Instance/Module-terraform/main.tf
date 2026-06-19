module "ec2" {
    source = "../Instance-terraform"
    ami-ID =  = "ami-0e35ddab05955cf57"
    aws_region = "us-east_1"
    instance_name = "dev"
    instance_type = "t3.micro"
  
}
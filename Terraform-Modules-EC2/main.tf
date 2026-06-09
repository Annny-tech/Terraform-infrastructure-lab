module "ec2" {
  source = "./modules/ec2"

  ami_id         = "ami-xxxxxxxxxxxxx"
  instance_type  = "t2.micro"
  instance_name  = "terraform-module-ec2"  
}
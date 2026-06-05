resource "aws_launch_template" "web" {
  name_prefix   = "web-template"
  image_id      = var.ami_id
  instance_type = var.instance_type

  vpc_security_group_ids = [
    aws_security_group.ec2_sg.id
  ]
}
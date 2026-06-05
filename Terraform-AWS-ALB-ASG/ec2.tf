resource "aws_launch_template" "Terra" {
  name_prefix   = "Terra-template"
  image_id      = var.ami_id
  instance_type = var.instance_type
}
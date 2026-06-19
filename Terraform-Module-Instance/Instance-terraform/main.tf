resource "aws_instance" "name" {
    ami = var.ami_id
    instance_type = var.instance_type
    Tags = {
        Name = var.instance_name
    } 
}
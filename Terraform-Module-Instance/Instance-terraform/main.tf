resource "aws_instance" "name" {
    ami = var.ami-ID
    instance_type = var.instance_type
}
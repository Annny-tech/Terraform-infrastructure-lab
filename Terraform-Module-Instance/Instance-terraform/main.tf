resource "aws_instance" "web" {
    ami = var.ami-ID
    instance_type = var.instance_type
}
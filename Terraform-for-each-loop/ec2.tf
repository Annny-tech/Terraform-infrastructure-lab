resource "aws_instance" "web" {
  for_each = {
    web1 = "t2.micro"
    web2 = "t2.micro"
    web3 = "t3.micro"
  }

  ami           = var.ami_id
  instance_type = each.value

  tags = {
    Name = each.key
  }
}
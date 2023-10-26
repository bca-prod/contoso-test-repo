resource "aws_eip" "contoso_eip" {
  instance = aws_instance.contoso_instance.id
  domain = "vpc"
}

resource "aws_eip_association" "contoso_eip_ass" {
  instance_id   = aws_instance.contoso_instance.id
  allocation_id = aws_eip.contoso_eip.id
}
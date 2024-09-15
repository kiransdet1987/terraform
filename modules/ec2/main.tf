resource "aws_instance" "myec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id = var.ec2_sub_id
  key_name = var.key_name
  tags = {
    Name = var.ec2_name
  }
}

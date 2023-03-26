resource "aws_instance" "jenkins" {
  ami                     = var.ami
  instance_type           = var.instance_type
  key_name = "k8s"
  subnet_id = var.subnet_id
  tags = {
    Name = "jenkins"
  }
}
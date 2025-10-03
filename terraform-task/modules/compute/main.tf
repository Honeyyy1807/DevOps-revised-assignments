resource "aws_iam_instance_profile" "instance_profile" {
  name = "ec2-instance-profile"
  role = var.iam_role
}

resource "aws_instance" "web" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  iam_instance_profile   = aws_iam_instance_profile.instance_profile.name
  associate_public_ip_address = true
  tags = { Name = "web-instance" }
}

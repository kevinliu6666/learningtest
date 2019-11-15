resource "aws_instance" "main" {
  ami = var.ami_id
  instance_type = var.instance_type
  key_name = var.key_name
  vpc_security_group_ids = [
     var.test_sg 
  ]

  user_data = <<EOF
  #!/bin/bash
  yum update -y
  yum install httpd -y
  systemctl enable httpd
  systemctl start httpd
  EOF

  tags = {
      Name = "main"
  }
}

output "pub_dns" {
  value = aws_instance.main.public_dns
}


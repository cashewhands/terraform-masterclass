resource "random_id" "node_id" {
  byte_length = 2
  keepers = {
    key_name = var.key_name
  }
}

resource "aws_instance" "webserver" {
  ami                    = data.aws_ami.server_ami.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.webserver_sg.id]

  user_data = <<EOF
  #!/bin/bash
  echo "Hello, World > index.html
  nohup busybox httpd -f -p 8080 &
  EOF

  tags = {
    Name = "terraform-server-name"
  }
}
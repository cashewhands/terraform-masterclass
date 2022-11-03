# sg.tf | Security Groups Configuration

resource "aws_security_group" "webserver_sg" {
  #checkov:skip=CKV_AWS_260: allow ingress from 0.0.0.0/0 to port 8080 for testing
  name        = "webserver-sg"
  description = " security group to allow inbound/outbound from the VPC to EC2 Webserver"
  /* vpc_id      = aws_vpc.vpc.id */

  ingress {
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    description      = "Allow 443 from anywhere"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    protocol         = "tcp"
    from_port        = 8080
    to_port          = 8080
    description      = "Allow 8080 connection from anywhere"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    description      = "Allow outbound access"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}

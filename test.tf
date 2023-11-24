resource "aws_security_group" "allow_tls" {
  name        = "allow_SSH"
  description = "Allow SSH inbound traffic"
  vpc_id      = "vpc-52ccab54abe62b351"

  ingress {
    description = "Allow All"
    from_port   = 22
    to_port     = 23
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

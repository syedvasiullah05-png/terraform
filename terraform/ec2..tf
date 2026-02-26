provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "frontend" {
  ami = "ami-0f3caa1cf4417e51b"
  instance_type = "t3.micro"
  key_name = "logical"
  tags = {
    Name = "c8.local"
  }
}

resource "aws_instance" "backend" {
  ami = "ami-0b6c6ebed2801a5cb"
  instance_type = "t3.micro"
  key_name = "logical"
  tags = {
    Name = "u21.local"
  }
}


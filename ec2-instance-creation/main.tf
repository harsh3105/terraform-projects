provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "example" {
  ami = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  subnet_id = "subnet-018a4381e2b7dbff1"
  key_name = "aws_login"
  }
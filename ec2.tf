provider "aws" {
  version = "~> 1.60"
  region = "us-east-1"
  profile = "default"
}

resource "aws_instance" "MQTTS" {
  ami = "ami-035be7bafff33b6b6"
  instance_type = "t2.micro"
  subnet_id = "subnet-7329425d"
  iam_instance_profile = "ec2-full-access"
  availability_zone = "us-east-1d"
  security_groups = ["sg-ea1caeae"]
  associate_public_ip_address = "true"
  key_name = "cherrysree1"

  tags {
    Name = "/TEST"
    Project = "testing"
  }

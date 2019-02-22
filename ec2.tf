provider "aws" {
  version = "~> 1.60"
  region = "us-east-1"
  profile = "default"
}

resource "aws_instance" "MQTTStest" {
  ami = "ami-0080e4c5bc078760e"
  instance_type = "t2.micro"
}

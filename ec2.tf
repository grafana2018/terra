provider "aws" {
  version = "~> 1.60"
  region = "us-east-1"
  profile = "default"
}

resource "aws_instance" "MQTTStest" {
  ami = "ami-035be7bafff33b6b6"
  instance_type = "t2.micro"
}

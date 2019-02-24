provider "aws" {
  version = "~> 1.60"
  region = "us-east-1"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}

resource "aws_instance" "MQTTStest" {
  ami = "ami-035be7bafff33b6b6"
  instance_type = "t2.micro"
}

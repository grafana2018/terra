provider "aws" {
  region = "us-east-1"
  access_key = "AKIAIFUKXZFPED5W3HHQ"
  secret_key = "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"
}

resource "aws_instance" "MQTTStest" {
  ami = "ami-0080e4c5bc078760e"
  instance_type = "t2.micro"
}

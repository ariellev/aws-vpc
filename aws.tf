provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region = "${var.aws_region}"
}

resource "aws_key_pair" "deployer" {
  key_name = "aws"
  public_key = "${file("aws.pub")}"
}
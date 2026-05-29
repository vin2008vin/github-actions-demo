terraform {
 required_providers {
   aws = {
     source = "hashicorp/aws"
   }
 }
}
provider "aws" {
 region = "ap-south-1"
}

resource "aws_instance" "test_instance" {
 ami           = "ami-00e801948462f718a"
 instance_type = "t2.micro"
 tags = {
   Name = "test_instance"
 }
}

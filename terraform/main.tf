provider "aws" {
 region = "ap-south-1
}

resource "aws_instance" "test_instance" {
 ami           = "ami-091138d0f0d41ff90"
 instance_type = "t2.nano"
 tags = {
   Name = "test_instance"
 }
}

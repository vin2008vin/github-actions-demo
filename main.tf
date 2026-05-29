provider "aws" {
 region = "us-west-1
}

reource "aws_s3_bucket" "example" {
bucket = "my-test-bucket"
}

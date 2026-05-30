provider "aws" {
region = "ap-south-1"
}

data "aws_s3_bucket" "existing_bucket" {
bucket = "test-bucket-9986660009"
}

output "bucket_arn" {
description = " The amazon resource name of the bucket "
value = data.aws_s3_bucket.existing_bucket.arn
}

output "bucket_domain_name" {
description = " the bucket domain name"
value = data.aws_s3_bucket.existing_bucket.bucket_domain_name
}

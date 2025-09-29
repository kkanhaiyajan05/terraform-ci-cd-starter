provider "aws" {
    region      = "us-east-1"
}

resource "aws_s3_bucket" "krishna_bucket" {
    bucket              = "krisjan05-terraform-bucket"
    acl                 = "private"

    tags = {
        Name        = "MyS3Bucket"
        Environment = "Practice"
    }    
}

output "bucket_name" {
    value = aws_s3_bucket.krishna_bucket.bucket
}
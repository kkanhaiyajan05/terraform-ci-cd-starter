provider "aws" {
    region      = var.region
}

resource "aws_s3_bucket" "krishna_bucket" {
    bucket              = var.bucket_name
    acl                 = "private"

    versioning_configuration {
        status          = "Enabled"
    }

    tags = {
        Name        = "MyS3Bucket"
        Environment = var.environment_name
    }    
}

output "bucket_name" {
    value = aws_s3_bucket.krishna_bucket.bucket
}
variable "region" {
    description         = "This is the region for AWS Deployment"
    type                = string
    default             = "us-east-1"
}

variable "bucket_name" {
    description         = "This is the name of the bucket which is deployed on AWS"
    type                = string
    default             = "krishjan05-terraform-bucket"
}

variable "environment_name" {
    description         = "This is the name of the environment which is used while deploying resources to AWS"
    type                = string
    default             = "Practice"
}
provider "aws" {
    region = "ap-south-1"
    access_key = "AKIAQQDEPS7XQO7FVQ57"
    secret_key = "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"
}
# Create a EC2-Instance : Specify the EC2-Instance details 
resource "aws_instance" "res1-ec2" {
    ami = "ami-0d951b011aa0b2c19"
    instance_type = "t2.micro"
    tags = {
        name = "sktech-test1"
    }
}
# Create S3 bucket
resource "aws_s3_bucket" "res2-s3"{
    bucket = "sktech-s3-7884"
}
# Note: if you define 2 or more resources those can be created in parallel.
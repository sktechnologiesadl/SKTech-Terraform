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
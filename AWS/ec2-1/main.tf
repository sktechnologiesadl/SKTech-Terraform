provider "aws" {
    region = "ap-south-1"
    profile = "default"
}
# Create a EC2-Instance : Specify the EC2-Instance details 
resource "aws_instance" "res1-ec2" {
    ami = "ami-0d951b011aa0b2c19"
    instance_type = "t2.micro"
    tags = {
        name = "sktech-test1"
    }
}
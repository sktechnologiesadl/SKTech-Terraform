####### Variables define in the AWS 
variable "instance_name" {
    description = "this is EC2-Instance name"
    default = "sktech-machine"
}
variable "instance_ami" {
    description = "This is AMI of the machine"
    default = "ami-0d951b011aa0b2c19"
}
variable "instance_type"{
    description = "This is instance type"
    #default = "t2.micro"
}
######## AWS - Provider
provider "aws"{
    region = "ap-south-1"
    access_key = "AKIAQQDEPS7XQO7FVQ57"
    secret_key = "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"
}
######## EC2-Instance creation 
resource "aws_instance" "res1_ec2" {
    ami = "${var.instance_ami}"
    instance_type = "${var.instance_type}"
    tags = {
        name = "${var.instance_name}"
    }
}
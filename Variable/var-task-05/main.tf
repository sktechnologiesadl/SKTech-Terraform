######## AWS - Provider
# provider "aws"{
#     region = "ap-south-1"
#     access_key = "AKIAQQDEPS7XQO7FVQ57"
#     secret_key = "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"
# }
######## EC2-Instance creation 
resource "aws_instance" "res1_ec2" {
    ami = "${var.instance_ami}"
    instance_type = "${var.instance_type}"
    tags = {
        name = "${var.instance_name}"
    }
}
######## EC2-Instance creation 
resource "aws_instance" "res1_ec2" {
    ami = "${var.instance_ami}"
    instance_type = "${var.instance_type[0]}"
    tags = {
        name = "${var.instance_name[0]}"
    }
}
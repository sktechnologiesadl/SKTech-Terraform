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
    default = "t2.micro"
}
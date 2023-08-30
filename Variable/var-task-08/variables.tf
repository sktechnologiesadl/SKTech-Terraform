####### Variables define in the AWS 
variable "instance_name" {
    description = "this is EC2-Instance name"
    type = map                  # mapping the variables
    default = {
        "one" = "server1"
        "two" = "server2"
    }
}
variable "instance_ami" {
    description = "This is AMI of the machine"
    default = "ami-0d951b011aa0b2c19"
}
variable "instance_type"{
    description = "This is instance type"
    type = map
    default = {
        "first" = "t2.nano"
        "second"= "t2.micro"
        "third" = "t2.medium"
    }
}
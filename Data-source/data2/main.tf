######## Data Source 
# listing out the availability zones
data "aws_instances" "datask2" {
    filter {
      name = "instance.group-id"
      values = ["sg-04aca16ea4116af97"]
    }
    filter {
      name = "instance-type"
      values = ["t2.micro", "t2.nano"]
    }
    instance_state_names = ["running", "stopped"]
}
output "instance" {
    value = "${data.aws_instance.datask2.name}"
}

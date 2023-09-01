######## Data Source 
# listing out the availability zones
data "aws_availability_zones" "datask1" {
    state = "available"
}
output "azlist"{
    description = "These are mumbai region azones"
    value = "${data.aws_availability_zones.datask1.names}"
}
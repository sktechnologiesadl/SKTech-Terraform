###### These are the outputs from the resource after created 
output "output1"{
    description = "This is instance id"
    value = "${aws_instance.res1_ec2.id}"
}
output "pub-ip" {
    description = "This is Public IP of the server"
    value ="${aws_instance.res1_ec2.public_ip}"
}
output "pri-ip" {
    description = "This is Public IP of the server"
    value ="${aws_instance.res1_ec2.private_ip}"
}
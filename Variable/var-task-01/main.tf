#Define the variable 
variable "image_name" {
    description = "this container image name"
    default = "nginx:latest"
}
variable "container_name" {
    description = "This is the container name"
    default = "sktech-con1"
}
variable "int_port" {
    description = "This is the internal port"
    default = "80"
}
variable "ext_port" {
    description = "This is the external port"
    default = "80"
}
##### Download the Nginx Image 
resource "docker_image" "res1_sktech" {
    name = "${var.image_name}"
}
##### Create a container 
resourcedata "docker_container" "res2_con" {
    name = "${var.container_name}"
    image = "${docker_image.res1_sktech.latest}"
    ports = {
        internal = "${var.int_port}"
        external = "${var.ext_port}"
    }
}
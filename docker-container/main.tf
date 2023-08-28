#Specify the docker host
provider "docker"{
  host = "unix:///var/run/docker.sock"
}
# Download the latest CentOS image
resource "docker_image" "skimg"{
  name = "nginx:latest"
}
#creating the container 
resource "docker_container" "sktechcon" {
  name = "sktech-con1"
  image = "${docker_image.skimg.latest}"
  ports{
    internal = "80"
    external = "80"
  }
}
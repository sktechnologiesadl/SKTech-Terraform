#Specify the docker host
provider "docker"{
  host = "unix:///var/run/docker.sock"
}
# Download the latest CentOS image
resource "docker_image" "skimg"{
  name = "centos:latest"
}

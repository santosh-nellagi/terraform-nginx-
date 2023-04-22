terraform{
required_providers{
docker = {
source = "kreuzwerker/docker"
version = "3.0.2" 
}
}
}

provider "docker" {}

resource "docker_image" "nginx" {
name = "nginx"
keep_locally = false
}

resource "docker_container" "nginx" {
image = "nginx"
name = "nginx-new"
ports {
internal = 80
external = 80
}
}

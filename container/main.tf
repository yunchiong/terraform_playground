#---------------container/main.tf---------------

# Setup Docker Provider
provider "docker" {
  host = "tcp://127.0.0.1:2375/"
}

# Start a container
resource "docker_container" "container_id" {
  name = "${lookup(var.name, var.env)}"
  image = "${lookup(var.image, var.env)}"
  ports {
    internal = "${var.int_port}"
    external = "${lookup(var.ext_port, var.env)}"
  }
}

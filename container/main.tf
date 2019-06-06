#---------------container/main.tf---------------

# Start a container
resource "docker_container" "container_id" {
  name = "${lookup(var.name, var.env)}"
  image = "${lookup(var.image, var.env)}"
  ports {
    internal = "${var.int_port}"
    external = "${lookup(var.ext_port, var.env)}"
  }
}

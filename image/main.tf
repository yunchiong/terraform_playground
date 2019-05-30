#------------image/main.tf-------

# Setup Docker Provider
provider "docker" {
  host = "tcp://127.0.0.1:2375/"
}

# Download a Docker Image
resource "docker_image" "image_id" {
  name = "${lookup(var.image, var.env)}"
}

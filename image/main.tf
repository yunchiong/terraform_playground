#------------image/main.tf-------

# Download a Docker Image
resource "docker_image" "image_id" {
  name = "${lookup(var.image, var.env)}"
}

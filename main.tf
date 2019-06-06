# Download a Docker Image
module "image" {
  source = "./image"
  env = "${var.env}"
}

# Start a Docker Container
module "container" {
  source = "./container"
  env = "${var.env}"
}



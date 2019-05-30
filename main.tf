# Setup Docker Provider
provider "docker" {
  host = "tcp://127.0.0.1:2375/"
}


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



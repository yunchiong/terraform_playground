#---------------container/variables.tf----------

variable "env" {
  description = "Environment type"
}

variable "name" {
  description = "Name of the docker container"
  type = "map"
  default = {
    dev = "ghost_dev"
    prod = "ghost_prod"
  }
}

variable "image" {
  description = "Name of the docker image"
  type = "map"
  default = {
    dev = "ghost:alpine"
    prod = "ghost:latest"
  }
}

variable "int_port" {
  description = "Internal port of the container"
  default = "2368"
}

variable "ext_port" {
  description = "External port of the container"
  type = "map"
  default = {
    dev = "9001"
    prod = "9002"
  }
}

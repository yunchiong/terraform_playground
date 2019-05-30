#--------------image/variables.tf----------

variable "env" {
  description = "Environment Type"
}


variable "image" {
  description = "Image to be download"
  type = "map"
  default = {
    dev = "ghost:alpine"
    prod = "ghost:latest"
  }
}

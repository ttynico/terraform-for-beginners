variable "image_name" {
  type        = string
  description = "The name of the Docker image"
  default     = "nginx"
}

variable "image_tag" {
  type        = string
  description = "The tag of the Docker image"
  default     = "1.23.3"
}

variable "internal_port" {
  type        = number
  description = "The internal port number for the container"
}

variable "external_port" {
  type        = number
  description = "The external port number for the container"
}

variable "algorithm" {
  type        = string
  description = "The algorithm for the private key"
  default     = "RSA"
}

variable "rsa_bits" {
  type        = number
  description = "The number of RSA bits"
  default     = 4096
}

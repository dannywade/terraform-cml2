variable "address" {
  description = "cml2 controller address"
  type        = string
  default     = "https://192.168.1.1"
}

variable "username" {
  description = "cml2 username"
  type        = string
  default     = "admin"
}

variable "password" {
  description = "cml2 password"
  type        = string
  sensitive   = true
} 
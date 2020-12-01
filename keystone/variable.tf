variable "prefix" {
  default = "rax"
}

variable "random_id" {
  description = "Random ID / ticket ID to append to the OSP resource"
  default = "201120-05552"
  type = string
}
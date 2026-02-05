variable "filename" {
  description = "file name of project"
  default     = "master.txt"
  type        = string
}

variable "content" {
  description = "content of the project"
  default     = "welcome to the Hyderabad"
  type        = string
}

variable "prefix" {
  description = "content of the prefix"
  default     = "MR"
  type        = string
}

variable "length" {
  description = "length of the name"
  default     = 1
  type        = number
}

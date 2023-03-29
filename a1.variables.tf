variable "region" {
  type    = string
  default = "us-east-2"
}

variable "access_key" {
  type      = string
  sensitive = true
  default   = ""
}

variable "secret_key" {
  type      = string
  sensitive = true
  default   = ""
}


variable "subnet_cidr_private" {
  default = ["10.20.20.0/28", "10.20.20.16/28", "10.20.20.32/28"]
  type    = list(any)
}

variable "availability_zone" {
  default = ["us-east-2a", "us-east-2b", "us-east-2c"]
}
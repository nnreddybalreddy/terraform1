

variable "image_id" {
  type=string 
  default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  type=string 
  default = "t3.micro"
}

variable "common_tags" {
  type=map 
  default = {
    Project="expense"
    Environment="dev"
    Terraform=true
  }
}

variable "instance_names" {
  default = ["db","backend","frontend"]
}


variable "ssh_port" {
  type=number
  default = 22
}

variable "protocol" {
  default = "tcp"
}

variable "allow_cidr" {
  type=list(string)
  default = ["0.0.0.0/0"]
}

variable "sg_name" {
  default = "allow_ssh"
}

variable "description" {
  default = "allow_ssh"
}

variable "zone_id" {
  default = "Z0678312CKW4YMU2Z6SJ"
}

variable "domain_name" {
  default = "narendra.shop"
}



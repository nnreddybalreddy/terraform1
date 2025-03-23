
#instance 

variable "image_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  type = string 
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
  type=list 
  default = ["db","backend","frontend"]
}

# sg 

variable "sg_name" {
    type = string 
    default = "allow_ssh"
}

variable "description" {
  type=string 
  default = "allow_ssh"
}

variable "ssh_port" {
  type=number
  default = 22
}

variable "protocol" {
  type=string 
  default = "tcp"
}

variable "allow_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

#R53 
variable "zone_id" {
  type=string
  default = "Z0678312CKW4YMU2Z6SJ"
}

variable "domain_name" {
  type=string
  default = "narendra.shop"
}

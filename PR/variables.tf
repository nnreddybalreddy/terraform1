#   ami="ami-09c813fb71547fc4f"
#   instance_type = "t3.micro"

#     tags={
#     Name="db"
#   }

# variables for instance 

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

#    to_port = 22
#     from_port = 22
#     protocol = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]

#       name = "allow_ssh"
#   description = "allow_ssh"

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

#r53

variable "zone_id" {
  default = "Z0678312CKW4YMU2Z6SJ"
}





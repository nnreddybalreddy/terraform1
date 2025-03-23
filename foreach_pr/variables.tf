


variable "image_id" {
  default = "ami-09c813fb71547fc4f"
}

# variable "instance_type" {
#   default = "t3.micro"
# }

variable "common_tags" {
  default = {
    Project="expense"
    Environment="dev"
    Terraform=true
  }
}

variable "instance_names" {
#   type=list  
#   default = ["db","backend","frontend"]
    type=map 
    default = {
        db="t3.small"
        backend="t3.micro"
        frontend="t3.micro"
    }
}

#   name = "allow_ssh"
#   description = "allow_ssh"

#       to_port = 22
#     from_port = 22

#         cidr_blocks = ["0.0.0.0/0"]        

variable "sg_name" {
  default = "allow_ssh"
}

variable "description" {
  default = "allow_ssh"
}

variable "sg_port" {
  default = 22
}

variable "allow_cidr" {
  type=list(string)  
  default = ["0.0.0.0/0"]
}

variable "protocol" {
  default = "tcp"
}


#r53


variable "zone_id" {
  default = "Z0678312CKW4YMU2Z6SJ"
}

variable "domain_name" {
  default = "narendra.shop"
}
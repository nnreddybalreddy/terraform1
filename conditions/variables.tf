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
    Name="db"
  }
}

variable "instance_names" {
    type=string 
    default = "db"

  
}
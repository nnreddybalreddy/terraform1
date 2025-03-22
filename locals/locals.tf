locals {
  image_id="ami-09c813fb71547fc4f"
  instance_type=var.instance_names=="db"?"t3.small":"t3.micro"
}
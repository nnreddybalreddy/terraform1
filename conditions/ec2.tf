resource "aws_instance" "db"{
    ami=var.image_id
    instance_type = var.instance_names == "db" ? "t3.small":"t3.micro"
    vpc_security_group_ids = ["sg-08665908cff32946d"]

    tags=var.common_tags
}



resource "aws_instance" "db"{
    ami=locals.image_id
    vpc_security_group_ids = ["sg-08665908cff32946d"]
    instance_type = locals.instance_type

    tags={
        Name="db"
    }
}


resource "aws_instance" "expense"{
    ami=data.aws_ami.ami_id.id
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-08665908cff32946d"]

    tags={
            Name="DB"
         }

}



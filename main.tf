provider "aws" {
  version = "~> 2.0"
  region = "${var.aws_region["region1"]}"
}

provider "aws" {
  alias = "us-east-2"
  version = "~> 2.0"
  region  = "${var.aws_region["region2"]}"
}

resource "aws_instance" "maq" {
  count = 3
  ami = "${var.image["us-east-1"]}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  tags = {
    Name = "maq${count.index}"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
}




# resource "aws_instance" "maq4" {
#   ami = vars.image["us-east-1"]
#   instance_type = "t2.micro"
#   key_name = "terraform-aws"
#   tags = {
#     Name = "maq4"
#   }
#   vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
#   depends_on = ["aws_s3_bucket.maq4"]
# }

# resource "aws_instance" "maq5" {
#   ami = vars.image["us-east-1"]
#   instance_type = "t2.micro"
#   key_name = "terraform-aws"
#   tags = {
#     Name = "maq5"
#   }
#   vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
# }

# resource "aws_s3_bucket" "maq4" {
#   bucket = "tiago-demay-maq4"
#   acl    = "private"

#   tags = {
#     Name = "tiago-demay-maq4"
#   }
# }


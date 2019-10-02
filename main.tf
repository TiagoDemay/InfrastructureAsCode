provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

provider "aws" {
  alias = "us-east-2"
  version = "~> 2.0"
  region  = "us-east-2"
}

resource "aws_instance" "maq" {
  count = 3
  ami = "ami-026c8acd92718196b"
  instance_type = "t2.micro"
  key_name = "terraform-aws"
  tags = {
    Name = "maq${count.index}"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
}

resource "aws_instance" "maq4" {
  ami = "ami-026c8acd92718196b"
  instance_type = "t2.micro"
  key_name = "terraform-aws"
  tags = {
    Name = "maq4"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
  depends_on = ["aws_s3_bucket.maq4"]
}

resource "aws_instance" "maq5" {
  ami = "ami-026c8acd92718196b"
  instance_type = "t2.micro"
  key_name = "terraform-aws"
  tags = {
    Name = "maq5"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
}

# resource "aws_instance" "maq6" {
#   provider = "aws.us-east-2"
#   ami = "ami-0d8f6eb4f641ef691"
#   instance_type = "t2.micro"
#   key_name = "terraform-aws"
#   tags = {
#     Name = "maq6"
#   }
#   vpc_security_group_ids = ["${aws_security_group.acesso-ssh-us-east-2.id}"]
# }


resource "aws_s3_bucket" "maq4" {
  bucket = "tiago-demay-maq4"
  acl    = "private"

  tags = {
    Name = "tiago-demay-maq4"
  }
}


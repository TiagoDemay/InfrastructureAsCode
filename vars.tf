variable "image" {
  description = "The AWS AMI to create things in."
  default = {
    "us-east-1" = "ami-026c8acd92718196b"
    "us-eats-2" = "ami-0d8f6eb4f641ef691"
  }
}

variable "aws_region" {
  description = "The AWS region to create things in."
  default     = {
    "region1" = "us-east-1"
    "region2" = "us-east-2"
  } 
}

variable "instance_type" {
  default     = "t2.micro"
  description = "AWS instance type"
}
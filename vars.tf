####### variaveis do Terraform ####

#Imagens de cada região
variable "image" {
  description   = "The AWS AMI to create things in."
  default = {
    "us-east-1" = "ami-026c8acd92718196b"
    "us-eats-2" = "ami-0d8f6eb4f641ef691"
  }
}

#Definição de Regions utilizadas
variable "aws_region" {
  description   = "The AWS region to create things in."
  default       = {
    "region1"   = "us-east-1"
    "region2"   = "us-east-2"
  } 
}

#Key_Pair utilizado para acessar as máquinas via SSH
variable "key_name" {
  description   = "Name of AWS key pair"
  default       = "terraform-aws"
  }

#Tipo das Instancias do projeto  
variable "instance_type" {
  description   = "AWS instance type"
  default       = "t2.micro"
}

#IP liberado para acessar a máquina SSH
variable "ip-ssh" {
    description = "Ip de Saida da Rede Host para acesso Remoto"
    default     = "186.232.61.4/32"
  
}

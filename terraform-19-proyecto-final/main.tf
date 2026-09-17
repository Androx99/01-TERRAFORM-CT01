terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_vpc" "vpc_aula" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "${var.nombre_proyecto}-vpc"
  }
}

resource "aws_subnet" "publica" {
  vpc_id                  = aws_vpc.vpc_aula.id
  cidr_block              = var.subnet_publica_cidr
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.nombre_proyecto}-subnet-publica"
  }
}

resource "aws_subnet" "privada" {
  vpc_id     = aws_vpc.vpc_aula.id
  cidr_block = var.subnet_privada_cidr

  tags = {
    Name = "${var.nombre_proyecto}-subnet-privada"
  }
}

resource "aws_security_group" "web" {
  name   = "${var.nombre_proyecto}-web-sg"
  vpc_id = aws_vpc.vpc_aula.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.nombre_proyecto}-web-sg"
  }
}

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023*-x86_64"]
  }
}

resource "aws_instance" "servidor" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.publica.id
  vpc_security_group_ids = [aws_security_group.web.id]

  tags = {
    Name = "${var.nombre_proyecto}-ec2"
  }
}

resource "aws_s3_bucket" "bucket_aula" {
  bucket = "${var.nombre_proyecto}-bucket-s3-unique-2026"

  tags = {
    Name = "${var.nombre_proyecto}-s3"
  }
}


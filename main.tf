provider "aws" {
}

terraform {
 backend "s3" {
  bucket = "cgit-teraform-bkd"
  key = "terraform.tfstate"
  region = "ap-south-1"
  encrypt = true
  use_lockfile = true


}

}
resource "aws_vpc" "Demovpc" {
  cidr_block = var.vpccidr
  tags = {
    "Name" = "First-VPC"
  }

}

resource "aws_subnet" "demosunet" {
  vpc_id            = aws_vpc.Demovpc.id
  cidr_block        = var.sub1cidr
  availability_zone = var.az1
  tags = {
    "Name" = "Demo-Sub-1"
  }
}   

resource "aws_subnet" "demosunet-1" {
  vpc_id            = aws_vpc.Demovpc.id
  cidr_block        = var.sub1cidr-1
  availability_zone = var.az2
  tags = {
    "Name" = "Demo-Sub-2"
  }
}
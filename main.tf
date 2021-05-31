provider "aws"{
  region = "ap-south-1"
}

resource "aws_vpc" "main_vpc"{
  cidr_block = "10.0.0.0/16"
  tenancy    = "default"
  
  tags ={
    Name = "VPC DEMO"
  }
}

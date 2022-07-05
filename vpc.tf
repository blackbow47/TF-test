resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
# this is a test
  tags = {
    Name = "VPC-demo-Jen"
    Purpose = "terrafrom using Jenkins"
  }
}
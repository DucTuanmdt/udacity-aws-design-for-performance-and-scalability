provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "t2_micro" {
  count         = 4
  ami           = "ami-0742b4e673072066f"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0acfcec4a52a778fb"
  tags = {
    Name = "Udacity T2"
  }
}

# resource "aws_instance" "m4_large" {
#   count         = 2
#   ami           = "ami-0742b4e673072066f"
#   instance_type = "m4.large"
#   subnet_id     = "subnet-0acfcec4a52a778fb"
#   tags = {
#     Name = "Udacity M4"
#   }
# }


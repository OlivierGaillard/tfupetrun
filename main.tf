provider "aws" {
  region = "eu-central-1"
  shared_credentials_file = "/home/olivier/.aws/credentials"
  profile                 = "tfupetrun"
}

resource "aws_instance" "example" {
    ami           = "ami-0ec1ba09723e5bfac"
    instance_type = "t2.micro"

    tags = {
      Name = "terraform-example"
    }
}

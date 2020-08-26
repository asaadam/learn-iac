terraform {
  backend "s3" {
    bucket         = "terrafom-backend"
    key            = "demo"
    dynamodb_table = "terraform-lock"
    region         = "ap-southeast-1"
  }
}


provider "aws" {
  profile = "default"
  region  = "ap-southeast-1"
}

resource "aws_instance" "example" {
  ami           = "ami-09a4a9ce71ff3f20b"
  instance_type = "t2.nano"
}

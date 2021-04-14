terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"

    }
  }
}

provider "aws" {
     profile = var.profile
      aws_account_id = var.account_id
      aws_access_key = var.access_key
      aws_secret_key = var.secret_key
      region= var.region
      profile = "root"
   
      region="eu-central-1"

    
    resource "aws_instance" "example" {
    ami = "ami-830c94e3"
    instance_type = "t2.micro"
    tags = {
    Name = "ExampleInstance"
        }
    }

    resource "aws_instance" "TF_main" {
        ami =  "ami-0e0102e3ff768559b"
        instance_type = "t2.micro"
        tags = {
            Name = "Great terraform "
            }
        }
}

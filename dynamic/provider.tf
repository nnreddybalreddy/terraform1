terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.92.0"
    }
  }
  backend"s3"{
    bucket="78s-remote-state-1"
    key   ="remote-state-dynamic"
    region="us-east-1"
    dynamodb_table = "daws78s-locking"
  }

}

provider "aws" {
  region = "us-east-1"
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.56.0"
    }

    openpgp = {
      source  = "greatliontech/openpgp"
      version = "0.0.3"
    }
  }
  backend "s3" {
    bucket = "pgr301-2021-terraform-state"
    key    = "glennbech/05-cd-docker-apprunner.tfstate"
    region = "eu-north-1"
  }
}
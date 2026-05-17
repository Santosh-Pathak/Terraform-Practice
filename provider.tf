variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
  default     = "us-west-2"
}

provider "aws" {
  region = var.aws_region
}

provider "local" {}

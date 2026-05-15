terraform { 
  required_providers { 
    aws = { 
        source = "hashicorp/aws" 
        version = "6.38.0" 
    } 
  } 


backend "s3" { 
  bucket = "my-terraform-state-bucket"
  dynamodb_table = "my-terraform-state-table"
  region = "us-west-2"
  key = "terraform.tfstate"
}
} 

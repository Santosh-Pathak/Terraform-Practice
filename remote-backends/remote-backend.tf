//s3 bucket
resource "aws_s3_bucket" "my-terraform-state-bucket" {
   
  bucket = "my-terraform-state-bucket"
   
    tags = {
        Name        = "my-terraform-state-bucket"
    }
}

//dynamodb
resource "aws_dynamodb_table" "my-terraform-state-table" {
  name = "my-terraform-state-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}
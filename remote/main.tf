provider "aws" {
    region = "ap-south-1"
}

resource "aws_s3_bucket" "terraform-bucket" {
  bucket = "sagarbucket-18-11-2254"
}

resource "aws_s3_bucket_versioning" "versioning_bucket" {
  bucket = aws_s3_bucket.terraform-bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "ss-training"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

}

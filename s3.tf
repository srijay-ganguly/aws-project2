resource "aws_s3_bucket" "name" {
  bucket = "remotebackendlatest1"
}

resource "aws_dynamodb_table" "terraform_lock" {
  name         = "terraform-lock-new1"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

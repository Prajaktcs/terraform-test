resource "aws_dynamodb_table" "global-terraform-state-lock" {
  name           = "global-terraform-state-lock-dynamo"
  hash_key       = "LockID"
  read_capacity  = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }
}

provider "aws" {
  profile = "personal"
  region  = "us-east-1"
}

terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "praj-terraform-state"
    dynamodb_table = "global-terraform-state-lock-dynamo"
    region         = "us-east-1"
    key            = "global/global.tfstate"
    profile        = "personal"
  }
}

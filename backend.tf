terraform {
  backend "s3" {
    bucket = "s3-terraform-project"
    key = "main"
    region = "ap-south-1"
    dynamodb_table = "my-dynamodb-table"
  }
}

terraform {
  backend "s3" {
    bucket         = "cohortas3bucket"
    key            = "cohorta1-module/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "cohortadynamodbtable"
  }
}
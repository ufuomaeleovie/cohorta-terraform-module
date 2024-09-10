terraform {
  backend "s3" {
    bucket         = "cohortas3bucket"
    key            = "cohorta-module/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "cohortadynamodbtable"
  }
}
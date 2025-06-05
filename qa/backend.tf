terraform {
  required_version = ">=0.12.0"
  backend "s3" {
    key            = "qa/terraform.state"
    bucket         = "team-money-2"
    region         = "us-east-2"
    dynamodb_table = "money-team"
  }
}

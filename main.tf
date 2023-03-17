provider "aws" {
  region = var.region
  default_tags {
    tags = {
      project = "aws-tf-common"
      repo    = "https://github.com/BigRedS/aws-tf-common"
    }
  }
}

resource "aws_route53_zone" "avipm" {
  name = "avi.pm"
}


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

resource "aws_acm_certificate" "avipm" {
  domain_name = "avi.pm"
  subject_alternative_names = ["*.avi.pm"]
  validation_method = "DNS"
}

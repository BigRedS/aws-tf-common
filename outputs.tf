output "avipm_nameservers" {
  value       = aws_route53_zone.avipm.name_servers
  description = "Nameservers to set for avi.pm"
}

output "avipm_zone_id" {
  value       = aws_route53_zone.avipm.zone_id
  description = "Zome ID for avi.pm"
}

output "avipm_cert_id" {
  value       = aws_acm_certificate.avipm.id
  description = "ARN of avi.pm ACM cert"
}

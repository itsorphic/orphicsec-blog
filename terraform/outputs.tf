output "bucket_name" {
  value = aws_s3_bucket.blog.id
}

output "cloudfront_distribution_id" {
  value = aws_cloudfront_distribution.blog.id
}

output "website_url" {
  value = "https://${var.domain_name}"
}

output "github_actions_access_key_id" {
  value = aws_iam_access_key.github_actions.id
}

output "github_actions_secret_access_key" {
  value     = aws_iam_access_key.github_actions.secret
  sensitive = true
}

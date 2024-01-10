resource "aws_ses_domain_identity" "example" {
  domain = "demo.example"  # Replace with your domain
}

resource "aws_ses_domain_dkim" "example_dkim" {
  domain = aws_ses_domain_identity.example.domain
}
resource "aws_s3_bucket" "chatbot_assets" {
  bucket = "hospital-chatbot-assets"
  force_destroy = true
  acl = "private"
  versioning {
    enabled = true
  }
  tags = {
    Name = "HospitalChatbotAssets"
  }
}

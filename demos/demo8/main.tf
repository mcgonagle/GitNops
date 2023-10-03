resource "aws_s3_bucket" "example" {
  bucket = "toms-test-bucket-123456789"

  tags = {
    Name        = "Toms Test Bucket 123456789"
    Environment = "Dev"
  }
}

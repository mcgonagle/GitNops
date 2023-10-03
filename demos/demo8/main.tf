resource "aws_s3_bucket" "example" {
  bucket = "toms-test-bucket-1234"

  tags = {
    Name        = "Toms Test Bucket 1234"
    Environment = "Dev"
  }
}

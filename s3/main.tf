resource "aws_s3_bucket" "bucket" {
  bucket = var.name_bucket
}

resource "aws_s3_bucket_object" "name" {
  etag = filemd5("bash.sh")
  bucket = aws_s3_bucket.bucket.bucket
  key = "bash.sh"
}
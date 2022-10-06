resource "aws_s3_bucket" "bucket" {
  bucket = var.name_bucket
}

resource "aws_s3_bucket_object" "name" {
  etag = filemd5("bash.sh")
  bucket = aws_s3_bucket.bucket.bucket
  key = "bash.sh"
}

resource "aws_instance" "ec2" {
    ami = "ami-0895310529c333a0c"
    instance_type = "t2.micro"
}
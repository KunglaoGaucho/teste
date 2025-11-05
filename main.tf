resource "aws_s3_bucket" "meu_bucket" {
  bucket = "meu-bucket-exemplo"
  acl    = "private"

  tags = {
    Name        = "meu-bucket-exemplo"
    Environment = "dev"
  }
}

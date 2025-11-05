resource "aws_s3_bucket" "meu_bucket" {
  bucket = "meu-bucket-exemplo"
  acl    = "private"

  tags = {
    Name        = "meu-bucket-exemplo"
    Environment = "dev"
  }
}

resource "aws_s3_bucket_public_access_block" "access_good_1" {
   bucket = aws_s3_bucket.meu_bucket.id

   block_public_acls   = true
   block_public_policy = true
 }

resource "aws_s3_bucket" "media" {
  bucket = "matchday-${var.environment}-media"
}

resource "aws_s3_bucket_versioning" "media" {
  bucket = aws_s3_bucket.media.id
  versioning_configuration { status = "Enabled" }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "media" {
  bucket = aws_s3_bucket.media.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "aws:kms"
      kms_master_key_id = aws_kms_key.matchday.arn
    }
  }
}

resource "aws_s3_bucket_public_access_block" "media" {
  bucket                  = aws_s3_bucket.media.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# CloudFront origin for broadcast streams; Cloudflare sits in front of fan portal.
resource "aws_s3_bucket" "stream_origin" {
  bucket = "matchday-${var.environment}-stream-origin"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "stream_origin" {
  bucket = aws_s3_bucket.stream_origin.id
  rule { apply_server_side_encryption_by_default { sse_algorithm = "AES256" } }
}

# Anti-doping siloed bucket — separate KMS key.
resource "aws_s3_bucket" "anti_doping" {
  bucket = "matchday-${var.environment}-anti-doping"
  tags   = { "matchday.io/siloed" = "wada" }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "anti_doping" {
  bucket = aws_s3_bucket.anti_doping.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "aws:kms"
      kms_master_key_id = aws_kms_key.anti_doping.arn
    }
  }
}

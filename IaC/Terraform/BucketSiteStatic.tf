resource "aws_s3_bucket" "s3_site_static" {
  bucket = "app.junior.tec.br"

  #lifecycle {
  #  prevent_destroy = true
  #}

  tags = {
    Name = "site-static"

  }
}

resource "aws_s3_bucket_website_configuration" "s3_site_static" {
  bucket = aws_s3_bucket.s3_site_static.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }

  routing_rule {
    condition {
      key_prefix_equals = "docs/"
    }
    redirect {
      replace_key_prefix_with = "documents/"
    }
  }
}

# Bloquear configurações padrão de acesso privado (se necessário)
resource "aws_s3_bucket_public_access_block" "s3_site_static" {
  bucket = aws_s3_bucket.s3_site_static.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

# Permitir acesso público ao site (CUIDADO: Isso expõe os arquivos publicamente)
resource "aws_s3_bucket_policy" "public_access" {
  bucket = aws_s3_bucket.s3_site_static.id
  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:GetObject",
      "Resource": "${aws_s3_bucket.s3_site_static.arn}/*"
    }
  ]
}
POLICY
}


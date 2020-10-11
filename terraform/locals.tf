locals {
  tags = {
    application = "mtl_website"
    environment = var.environment
    managed_by  = "terraform"
  }

  environment_delimiter = var.environment == "production" ? "" : "-${var.environment}"
  bucket_name           = "mtl-website"
  s3_origin_id          = "s3-${local.bucket_name}-${var.environment}"

  domain_name = "makethings.live"
  route53_zone_id = "Z07425162CR0RQ07JSNXX"
}

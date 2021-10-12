module "static-site" {
  source            = "telia-oss/static-site/aws"
  version           = "3.0.0"
  bucket_versioning = false
  hosted_zone_name  = "thecloudcollege.com"
  name_prefix       = "${var.user_name}"
  site_name         = "${var.user_name}.thecloudcollege.com"
}

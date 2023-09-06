module "s3_backend" {
  source              = "git::https://github.com/abhisheksr01/terraform-modules.git//aws/s3-backend"
  remote_backend_name = "${var.resource_name_prefix}-tf-state"
  // These should be refactored and a new version of the module should be published
  environment_name     = "dev"
  owner                = "abhishek"
  description          = "resources for learning k8s eks"
  s3_kms_master_key_id = data.aws_kms_alias.aws_kms_s3_default_key.id
  additional_tags      = var.default_tags
}

data "aws_kms_alias" "aws_kms_s3_default_key" {
  name = "alias/aws/s3"
}

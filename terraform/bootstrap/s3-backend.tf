module "s3_backend" {
  source                      = "git::https://github.com/abhisheksr01/aws-terraform-modules.git//s3-backend"
  bucket_name                 = var.resource_name_prefix
  dynamodb_table_name         = var.resource_name_prefix
  tags                        = var.default_tags
  s3_bucket_kms_master_key_id = data.aws_kms_alias.aws_kms_s3_default_key.id
}

data "aws_kms_alias" "aws_kms_s3_default_key" {
  name = "alias/aws/s3"
}

data "aws_kms_alias" "aws_kms_s3_default_key" {
  name = "alias/aws/s3"
}

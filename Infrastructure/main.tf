module "raffle_table" {
  source          = "./modules/DynamoDB"
  table_name      = var.DynamoDB_table_name
  billing_mode    = var.DynamoDB_billing_mode
  table_class     = var.DynamoDB_table_class
  attribute_name  = var.DynamoDB_attribute_name
  attribute_type  = var.DynamoDB_attribute_type
  hash_key        = var.DynamoDB_hash_key
  tag_description = var.DynamoDB_tag_description
}




//DynamoDB table
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


//lambda function apply

module "apply_lambda" {
  source = "./modules/Lambda"
  lambda_function_name = var.apply_lambda_function_name
  source_file_path= var.apply_lambda_source_file_path
  runtime = var.apply_lambda_runtime
  handler =var.apply_lambda_handler
  memory_size = var.apply_lambda_memory_size
  timeout =var.apply_lambda_timeout

}


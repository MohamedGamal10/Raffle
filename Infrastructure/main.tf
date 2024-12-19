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

//declared Lambda Role
module "raffle_role" {
  source = "./modules/LambdaRole"
}

//lambda function apply
module "apply_lambda" {
  source = "./modules/Lambda"
  lambda_role = module.raffle_role.lambda_role_arn
  lambda_function_name = var.apply_lambda_function_name
  source_file_path= var.apply_lambda_source_file_path
  runtime = var.apply_lambda_runtime
  handler =var.apply_lambda_handler
  memory_size = var.apply_lambda_memory_size
  timeout =var.apply_lambda_timeout

}

//lambda function count
module "count_lambda" {
  source = "./modules/Lambda"
  lambda_role = module.raffle_role.lambda_role_arn
  lambda_function_name = var.count_lambda_function_name
  source_file_path= var.count_lambda_source_file_path
  runtime = var.count_lambda_runtime
  handler =var.count_lambda_handler
  memory_size = var.count_lambda_memory_size
  timeout =var.count_lambda_timeout

}

//lambda function draw
module "draw_lambda" {
  source = "./modules/Lambda"
  lambda_role = module.raffle_role.lambda_role_arn
  lambda_function_name = var.draw_lambda_function_name
  source_file_path= var.draw_lambda_source_file_path
  runtime = var.draw_lambda_runtime
  handler =var.draw_lambda_handler
  memory_size = var.draw_lambda_memory_size
  timeout =var.draw_lambda_timeout

}

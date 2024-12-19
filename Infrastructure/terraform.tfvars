//Provider
Region = "eu-west-1"

//raffle table Data
DynamoDB_table_name      = "devops90_raffle"
DynamoDB_billing_mode    = "PAY_PER_REQUEST"            // On-demand capacity mode
DynamoDB_table_class     = "STANDARD_INFREQUENT_ACCESS" // DynamoDB Standard-IA
DynamoDB_attribute_name  = "email"
DynamoDB_attribute_type  = "S"
DynamoDB_hash_key        = "email" // Partition key
DynamoDB_tag_description = "DynamoDB table for storing raffle entries"

//apply lambda function 
apply_lambda_function_name = "apply_lambda"
apply_lambda_source_file_path = "../Project/apply"
apply_lambda_runtime = "nodejs20.x"
apply_lambda_handler = "apply.handler"
apply_lambda_memory_size = 129
apply_lambda_timeout = 3

//count lambda function 
count_lambda_function_name = "count_lambda"
count_lambda_source_file_path = "../Project/count"
count_lambda_runtime = "nodejs20.x"
count_lambda_handler = "count.handler"
count_lambda_memory_size = 129
count_lambda_timeout = 3


//draw lambda function 
draw_lambda_function_name = "draw_lambda"
draw_lambda_source_file_path = "../Project/draw"
draw_lambda_runtime = "nodejs20.x"
draw_lambda_handler = "draw.handler"
draw_lambda_memory_size = 129
draw_lambda_timeout = 3
variable "Region" {
  type = string
}

//DynamoDB
variable "DynamoDB_table_name" {
  description = "Name of the DynamoDB table"
  type        = string
}

variable "DynamoDB_billing_mode" {
  description = "Billing mode for the DynamoDB table"
  type        = string
}

variable "DynamoDB_table_class" {
  description = "DynamoDB table class"
  type        = string

}

variable "DynamoDB_attribute_name" {
  description = "DynamoDB table attribute name"
  type        = string

}

variable "DynamoDB_attribute_type" {
  description = "DynamoDB table attribute type"
  type        = string

}

variable "DynamoDB_hash_key" {
  description = "value for the hash key"
  type        = string
}

variable "DynamoDB_tag_description" {
  description = "Tag description"
  type        = string
}


//Lambda apply function
 variable "apply_lambda_function_name" {
   description = "value for the apply lambda function name"
   type        = string
 }

 variable "apply_lambda_source_file_path" {
   description = "value for the apply lambda source file path"
   type        = string
 }

 variable "apply_lambda_runtime" {
   description = "value for the apply lambda runtime"
   type        = string
 }

 variable "apply_lambda_handler" {
    description = "value for the apply lambda handler"
    type        = string
 }

 variable "apply_lambda_memory_size" {
   description = "value for the apply lambda memory size"
   type        = number
 }

 variable "apply_lambda_timeout" {
    description = "value for the apply lambda timeout"
    type        = number
  
 }

 //Lambda count function
 variable "count_lambda_function_name" {
   description = "value for the count lambda function name"
   type        = string
 }

 variable "count_lambda_source_file_path" {
   description = "value for the count lambda source file path"
   type        = string
 }

 variable "count_lambda_runtime" {
   description = "value for the count lambda runtime"
   type        = string
 }

 variable "count_lambda_handler" {
    description = "value for the count lambda handler"
    type        = string
 }

 variable "count_lambda_memory_size" {
   description = "value for the count lambda memory size"
   type        = number
 }

 variable "count_lambda_timeout" {
    description = "value for the count lambda timeout"
    type        = number
  
 }


 //Lambda draw function
 variable "draw_lambda_function_name" {
   description = "value for the draw lambda function name"
   type        = string
 }

 variable "draw_lambda_source_file_path" {
   description = "value for the draw lambda source file path"
   type        = string
 }

 variable "draw_lambda_runtime" {
   description = "value for the draw lambda runtime"
   type        = string
 }

 variable "draw_lambda_handler" {
    description = "value for the draw lambda handler"
    type        = string
 }

 variable "draw_lambda_memory_size" {
   description = "value for the draw lambda memory size"
   type        = number
 }

 variable "draw_lambda_timeout" {
    description = "value for the draw lambda timeout"
    type        = number
  
 }

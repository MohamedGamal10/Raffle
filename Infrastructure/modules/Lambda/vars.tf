variable "source_file_path" {
    description = "Path to the source file"
    type        = string

}

variable "lambda_function_name" {
  description = "Name of the Lambda function"
  type = string
}

variable "runtime" {
  description = "Runtime for the Lambda function"
  type = string
}

variable "handler" {
  description = "Handler for the Lambda function"
  type = string
  
}

variable "memory_size" {
  description = "value for memory size"
  type = number
}

variable "timeout" {
  description = "value for timeout"
  type = number
}

variable "lambda_role" {
  description = "Lambda Role"
  type = string
}
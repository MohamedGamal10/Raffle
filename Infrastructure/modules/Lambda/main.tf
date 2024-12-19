# Create a ZIP file from the local index.js file

locals {
  source_file   = var.source_file_path
  file_name     = basename(local.source_file)                     
}

resource "null_resource" "zip_lambda" {
  provisioner "local-exec" {
    command = "cd ${local.source_file} && zip -r ${local.file_name}.zip ."
  }
}



# Lambda Function
resource "aws_lambda_function" "lambda_function" {
  function_name = var.lambda_function_name
  role          = var.lambda_role
  runtime       = var.runtime
  handler       = var.handler 
  memory_size   = var.memory_size
  timeout       = var.timeout

  # Use the local ZIP file created by the archive_file data source
  filename      = "${local.source_file}/${local.file_name}.zip"

}

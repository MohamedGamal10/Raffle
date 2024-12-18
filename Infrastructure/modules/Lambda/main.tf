# IAM Role and Policy for Lambda
resource "aws_iam_role" "lambda_role" {
  name               = "Raffle_Role"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow"
    }
  ]
}
EOF
}

# Attach policies to IAM Role
resource "aws_iam_role_policy_attachment" "dynamodb_full_access" {
  role       = aws_iam_role.lambda_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
}

resource "aws_iam_role_policy_attachment" "lambda_dynamodb_execution" {
  role       = aws_iam_role.lambda_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaDynamoDBExecutionRole"
}

resource "aws_iam_role_policy_attachment" "lambda_invocation_dynamodb" {
  role       = aws_iam_role.lambda_role.name
  policy_arn = "arn:aws:iam::aws:policy/AWSLambdaInvocation-DynamoDB"
}

resource "aws_iam_role_policy_attachment" "cloudwatch_logs_full_access" {
  role       = aws_iam_role.lambda_role.name
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchLogsFullAccess"
}

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
  role          = aws_iam_role.lambda_role.arn
  runtime       = var.runtime
  handler       = var.handler 
  memory_size   = var.memory_size
  timeout       = var.timeout

  # Use the local ZIP file created by the archive_file data source
  filename      = "${local.source_file}/${local.file_name}.zip"

}

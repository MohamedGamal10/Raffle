resource "aws_dynamodb_table" "dynamodb_table" {

  name = var.table_name
  billing_mode = var.billing_mode
  table_class = var.table_class
  

  attribute {
    name = var.attribute_name
    type = var.attribute_type
  }

  hash_key = var.hash_key

  tags = {
    Description = var.tag_description
  }
}
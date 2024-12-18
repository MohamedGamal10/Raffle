variable "Region" {
  type = string
}

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
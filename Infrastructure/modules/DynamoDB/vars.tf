variable "table_name" {
  description = "Name of the DynamoDB table"
  type = string
}

variable "billing_mode" {
  description = "Billing mode for the DynamoDB table"
  type = string
}

variable "table_class" {
  description = "DynamoDB table class"
  type = string

}

variable "attribute_name" {
  description = "DynamoDB table attribute name"
  type = string

}

variable "attribute_type" {
  description = "DynamoDB table attribute type"
  type = string

}

variable "hash_key" {
  description = "value for the hash key"
  type = string
}

variable "tag_description" {
  description = "Tag description"
  type = string
}
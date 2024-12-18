// Outputs for the raffle table
output "raffle_table_name" {
  description = "The name of the DynamoDB table"
  value       = module.raffle_table.table_name
}

output "raffle_table_arn" {
  description = "The ARN of the DynamoDB table"
  value       = module.raffle_table.table_arn
}

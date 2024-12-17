# Raffle or Drawing Infrastructure Project

This repository contains Terraform code to deploy the infrastructure for a Raffle or Drawing application. The project uses AWS services to create a scalable and cost-effective solution to manage raffle entries and determine winners.

## Features

### DynamoDB
- **Table for storing raffle entries**.
- **On-demand capacity** for simplified billing.
- Optimized with **Standard-IA table class**.

### Lambda Functions
- **Apply**: Add an entry to the DynamoDB table.
- **Count**: Retrieve the total number of entries.
- **Draw**: Randomly select 3 winners and mark them in the table.

### API Gateway
- **Exposes Lambda functions as REST APIs**.
- Supports **custom domain integration** and DNS configuration.
- Implements **mutual TLS authentication** for secure communication.

### Static Website Hosting
- **HTML pages hosted on S3** and delivered via **CloudFront** for global distribution.

## Prerequisites
- **AWS CLI** configured with appropriate credentials.
- **Terraform v1.5+** installed.
- A **registered domain name** (optional for custom domain API).

## Deployment Steps

1. **Initialize Terraform**
   ```bash
   terraform init
2. **Review Variables**
    
Open the variables.tf file and update the following variables based on your requirements:

* **Domain Name**: Specify your domain name for the custom API (if applicable).
* **S3 Bucket Names**: Update the names of the S3 buckets for static website hosting.
* **Certificate Details**: Configure ACM certificate information for the API Gateway.

3. **Plan Infrastructure**
   ```bash
   terraform plan
4. **Apply Configuration**
   ```bash
   terraform apply

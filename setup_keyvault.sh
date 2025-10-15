#!/bin/bash

# Variables (replace with your actual values)
KEYVAULT_NAME=""
RESOURCE_GROUP=""
LOCATION="italynorth"

CLIENT_ID=""
CLIENT_SECRET=""
TENANT_ID=""
SUBSCRIPTION_ID=""

# Create resource group (if not exists)
#az group create --name "$RESOURCE_GROUP" --location "$LOCATION"

# Create Key Vault
#az keyvault create   --name "$KEYVAULT_NAME"   --resource-group "$RESOURCE_GROUP"   --location "$LOCATION"

# Store secrets in Key Vault
#az keyvault secret set --vault-name "$KEYVAULT_NAME" --name "Terraform-Client-ID" --value "$CLIENT_ID"
#az keyvault secret set --vault-name "$KEYVAULT_NAME" --name "Terraform-Client-Secret" --value "$CLIENT_SECRET"
#az keyvault secret set --vault-name "$KEYVAULT_NAME" --name "Terraform-Tenant-ID" --value "$TENANT_ID"
#az keyvault secret set --vault-name "$KEYVAULT_NAME" --name "Terraform-Subscription-ID" --value "$SUBSCRIPTION_ID"

# Output confirmation
echo "Azure Key Vault setup complete and secrets stored." 


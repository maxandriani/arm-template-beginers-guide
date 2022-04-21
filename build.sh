# First login w/ yout account
az login

# Then set your default Subscription
az account set --subscription c68c9fae-1fbd-4cbe-9fd4-712383bad82e

# Create a resource group
az group create \
  --name arm-template-beginers \
  --location "westus"

# Deploy a template
az deployment group create \
  --name armbeginers \
  --resource-group arm-template-beginers \
  --template-file src/azuredeploy.json


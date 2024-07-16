# Create a resource group
az group create --name aks_group --location eastus
# Create a container registry
az acr create --resource-group aks_group --name acrcwr --sku Basic
# Create a Kubernetes cluster
az aks create `
--resource-group aks_group `
--name my_aks_cluster `
--enable-managed-identity `
--node-count 1 `
--generate-ssh-keys

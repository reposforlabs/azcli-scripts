# Define variables
resourceGroup="myResourceGroup"
location="eastus"
vmNames=("vm1" "vm2" "vm3")
image="UbuntuLTS"
adminUsername="azureuser"
adminPassword="your_password_here"
vmSize="Standard_B1s"  # You can change this to the desired VM size

# Create a resource group
az group create --name $resourceGroup --location $location

# Loop to create VMs
for vmName in "${vmNames[@]}"
do
  az vm create \
    --resource-group $resourceGroup \
    --name $vmName \
    --image $image \
    --admin-username $adminUsername \
    --admin-password $adminPassword \
    --size $vmSize
done

This script will:
1. Create a resource group named `myResourceGroup` in the `eastus` location.
2. Create three virtual machines named `vm1`, `vm2`, and `vm3` using the Ubuntu LTS image.
3. Set the admin username to `azureuser` and the password to `your_password_here`.
4. Set the size of each VM to `Standard_B1s`. You can change the `vmSize` variable to any other size you prefer.

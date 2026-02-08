# Linux virtual machine hosted on Azure

This documents how I setup a Linux virtual machine hosted on Microsoft Azure.

#### Create a resource group
1. Log into the [Azure portal](https://portal.azure.com/?azure-portal=true)

2. From the menu, select **Resource Groups**.

<img alt="Resource groups in menu" src="/setup/images/resource-group.png" width=200px>

3. Select **Create**.

4. Name your resource group and set a location.

<img alt="Set name and location for resource group" src="/setup/images/create-resource-group.png" width=200px>

5. Select **Review + create**

-----

#### Create a Linux virtual machine

1. Select Cloud shell icon

<img alt="Cloud shell icon" src="/learning/cloud/images/cloud-shell-icon.png" width=200px>

2. When prompted to select between `bash` or `powershell`, Select `bash`.

<img alt="Select bash" src="/setup/images/select-bash.png" width=200px>

3. Select `Mount Storage account`, click apply.

<img alt="Mount storage account" src="/setup/images/mount-storage-account.png" width=200px>

4. Select `I want to create a storage account`

<img alt="Create storage account" src="/setup/images/create-storage-account.png" width=200px>

5. Create name for storage account.

6. Once your terminal loads, run the following command:
```
az vm create --name <NAME> --resource-group <RESOURCE GROUP> --image Ubuntu2204 --location EastUS2 --admin-username azureuser --size Standard_D2as_v6
```

This will now create your VM.
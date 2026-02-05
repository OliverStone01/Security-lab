# Core architectural components of Azure

### Azure accounts
To use Azure, you first need to create an Azure account and choose a subscription.

A company might use a **single Azure account** for the business and **separate subscriptions** for development, marketing, and sales departments. Once you have created a Azure subscription, you can start creating Azure resources within each subscription.

<img alt="Azure accounts" src="". width=200px>

-----

### Azure Portal
The Azure portal has a GUI to interact with Azure services.

You can access the portal [with this link](https://portal.azure.com/).

You can access the **command line interface** within the Azure portal by selecting the Cloud Shell icon.

<img alt="Cloud Shell Icon" src="" width=200px>

You can change between **PowerShell** and **BASH** by selecting the **Switch to ...** or by entering `BASH` or `PWSH`.

<img alt="Switch to button" src="" width=100px>

When in PowerShell mode, the command line starts with `PS`. When in BASH mode, the command line starts with your `username@azure`.


**PowerShell in the CLI**

`Get-date` - get the current date and time.

Most Azure specific commands start with the letters **az**.

`az version` - Check version of CLI.


**Use BASH in the CLI**

`date` - get the current date and time.

Just like PowerShell, most of the commands begin with **az**.

`az upgrade` - run an update to the CLI.


**Use Azure CLI interactive mode**
You can interact with Azure using the **Azure CLI interactive mode**. With interactive mode, you can use autocompletion, command descriptions, and examples.

`az interactive` - enter interactive mode.

Before entering interactive mode, you have to decide if you want to send telemetry data by entering `yes` or `no`.

Wait a minute to allow the interactive mode to initialise.

`a` - start auto-completion.

<img alt="Start interactive mode" src="" width=300px>

Once intitialised, you can use the arrow keys or tab to help complete commands. 

Because interactive mode is set up specifically for Azure, you do not need to start each command with **az**.

`exit` - Exit interactive mode.

-----

### Azure physical infrastructure

The core architectural components of Azure may be broken down into two main groups: The physical infrastructure, and the management infrastructure.

**Physical infrastructure**
The physical infrastructure for Azure starts with datacenters. These are facilities with resources arranged in racks, with dedicated power, cooling, and networking infrastructure.

Azure has datacenters around the world. Datacenters are grouped into **Azure Regions** or **Azure Availability Zones**. These are designed to achieve resilience and reliability by allowing workloads to pass to other zones if one goes down.

The [Global infrastructure](https://infrastructuremap.microsoft.com/) site allows you to explore the underlying Azure infrastructure.

**Regions**
A region is a geographical area on the planet that contains at least one datacenter or multiple datacenters that are nearby and networked together with a low-latency network. Azure assigns and controls the resources with each region to ensure workloads are appropriately balanced.

Some services or virtual machine features are only available in certain regions. There are also some global services that don't require you to select a particular region, such as Microsoft Entra ID, Azure Traffic Manager, and Azure DNS.


**Availability Zones**
Availability zones are physically separated datacenters within an Azure region. Each availability zone is made up of one or more datacenters equipped with independent power, cooling, and networking.

An availability zone is set up to be an isolation boundary. If one zone goes down, the other continues working. Availability zones are connected through high-speed, private fiber-optic networks.

<img alt="Azure Region" src="" width=300px>

> To ensure resilience, a minimus of three separate availability zones are present in all availability zone-enabled regions.


**Use Availability zones in your apps**
You want to ensure your services and data are redundant so you can protect your information in case of failure. Instead of needing to host a duplicate of your hardware environment, you can use available zones instead which will take over if anything goes down.

Availability zones are primarily for virtual machines, managed disks, load balancers, and SQL databases.

Azure services that support availability zones fall into three categories:
- **Zonal Services**: You pin the resources to a specific zone.
- **Zone-redundant services**: The platform replicates automatically across zones.
- **Non-regional services**: Services are always available from Azure geographies and are resilient to zone-wide outages as well as region-wide outages.








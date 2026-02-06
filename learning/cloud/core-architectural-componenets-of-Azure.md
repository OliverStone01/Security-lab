# Core architectural components of Azure

### Azure accounts
To use Azure, you first need to create an Azure account and choose a subscription.

A company might use a **single Azure account** for the business and **separate subscriptions** for development, marketing, and sales departments. Once you have created a Azure subscription, you can start creating Azure resources within each subscription.

<img alt="Azure accounts" src="/learning/cloud/images/azure-accounts.png". width=200px>

-----

### Azure Portal
The Azure portal has a GUI to interact with Azure services.

You can access the portal [with this link](https://portal.azure.com/).

You can access the **command line interface** within the Azure portal by selecting the Cloud Shell icon.

<img alt="Cloud Shell Icon" src="/learning/cloud/images/cloud-shell-icon.png" width=200px>

You can change between **PowerShell** and **BASH** by selecting the **Switch to ...** or by entering `BASH` or `PWSH`.

<img alt="Switch to button" src="/learning/cloud/images/switch-to-button.png" width=100px>

- When in PowerShell mode, the command line starts with `PS`. 
- When in BASH mode, the command line starts with `username@azure`.


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


Even with the additional resiliency that availability zones provide, it's possible that an event could be so large that it impacts multiple availability zones in a single region.


**Region pairs**
Most Azure regions are paired with another region within the the same geography (US, Europe, or Asia) at least 300 miles away. This approach allows for the replication of resources across a geography that helps reduce the likelihood of interruptions.

> Not all Azure services automatically replicate data or automatically fall back from a failed region. Recovery and replication must be configured by the customer.

An example of a regional pain is Azure are **West US paired with East US** and **South-East Asia paired with East Asia.

<img alt="Geography" src="/learning/cloud/images/geography.png" width=300px>

**Additional advantages of region pairs:**
- If an extensive Azure outage occurs, one region out of every pair is prioritised to make sure at least one is restored as quickly as possible for applications hosted in that region pair.

- Planned Azure updated are rolled out to paired regions one region at a time to minimise downtime and risk of application outages.

- Data continues to reside within the same geography as its pair (except for Brazil South) for tax and law-enforcement jurisdiction purposes.

**Sovereign Regions**
Sovereign regions are instances of Azure that are isolated from the main instance of Azure. You may need to use a sovereign region for compliance or legal purposes.

Azure sovereign regions include:
- US DoD Central, US Gov Virginia, US Gov Iowa and more: 

These regions are physical and logical network isolated instances of Azure for U.S. government agencies and partners.
These datacenters are operated by screened U.S. personnel and include additional compliance certifications.

- China East, China North, and more:

These regions are available through a unique partnership between Microsoft and 21Vianet. Microsoft do not directly maintain these datacenters.

-----

### Azure Management infrastructure 

**Azure resources and resource groups**
A resource is the basic building block of Azure. A resource is anything you create, provision, deploy, etc.

Resource groups are simply grouping of resources. When creating resources, you are required to place it into a resource group. 

A resource can only be in one resource group at a time. You also cannot nest resource groups.

When you apply an action to a resource group, that action will be applied to to all resources within the resource group.

If you delete a resource group, all resources in the group will be deleted.

If you grant or deny access to a resource group, all those resources will have that effect.


**Azure Subscriptions**
Subscriptions are a unit of management, billing, and scale. Subscriptions allow you to logically organise your resource groups and facilitate billing.

Subscriptions provide you with authenticated and authorised access to Azure products and services. An Azure subscription links to an Azure account, which is an identity in Microsoft Entra ID or in a directory that Microsoft Entra ID trusts.

An account can have multiple subscriptions. You can use Azure subscriptions to define boundaries around Azure products, services, and resources. There are two types of subscription boundaries that you can use:

- **Billing Boundary**: This subscription type determines how an Azure account is billed for using Azure. Azure generates separate billing reports and invoices for each subscription so that you can organise and manage costs.

- **Access control boundary**: Azure applies access-management policies at the subscription level, and you can create separate subscriptions to reflect different organisational structures. 


You might choose to create additional subscriptions to separate:

- **Environments**: Set up separate environments for development and testing, security, or to isolate data for compliance reasons.

- **Organisational Structures**: You can create subscriptions to reflect different organisational structures. You could limit one team to lower-cost resources, while allowing the IT department full range.

- **Billing**: Because costs are first aggregated at the subscription level, you might want to create subscriptions to manage and track costs based on your needs.


**Azure management groups**
**Resources** gather into **resource groups**, and **resource groups** are gathered into **subscriptions**. If you have many **subscriptions**, you might need a way to efficiently manage access, policies, and compliance for those subscriptions.

****Azure management groups** provide a level of scope above subscriptions. You organise subscriptions into containers called **management groups** and apply governance conditions applied to the management groups. All subscriptions within a management group automatically inherit the conditions applied to the management group.

Management groups can be nested.

**Management group, Subscriptions, and resource group hierarchy**
You can build a flexible structure of management groups and subscriptions to organise resources into a hierarchy for unified policy and access management. The following diagram shows an example of creating a hierarchy for governance by using management groups.

<img alt="hierarchy" src="/learning/cloud/images/azure-subscription.png" width=300px>

Important facts about management groups:
- 10,000 management groups can be supported in a single directory.
- A management group tree can support up to six levels of depth. This limit does'nt include the root level or the subscription level.
- Each management group and subscription can support only one parent.





# Azure cost management

#### what can affect costs
Azure is an operational expense (OpEx) where you rent infrastructure as you need it.

OpEx costs can be impacted by:  
- **Resource type:** costs are influenced by type, settings, and region. Usage is tracked and billed based on metered instances.

- **Consumption**
- **Maintenance**
- **Geography**
- **Subscription type**
- **Azure marketplace:** Azure Marketplace offers Azure-based solutions and services from third-party vendors, including preconfigured servers and managed appliances. Billing structures are determined by the vendors.


#### Pricing calculator
The pricing calculator is used to help understand potential Azure expenses. You can access the calculator [here](https://azure.microsoft.com/en-gb/pricing/calculator/) and build out a configuration to see the cost.


#### cost management tools
Cost Management allows for quick cost checks, alert creation, and budget automation for Azure resources.

Cost analysis provides a quick visual of Azure costs, allowing users to view total costs by billing cycle, region, resource, and more.


#### Cost alerts
There are three types of alerts:
- Budget alerts
- Credit alerts
- Department spending quota alerts


#### Tags
Resource tags are another way to organise resources. Tags provide metadata about your resources. This is useful for:
- **Resource management:** Helps you locate and act on resources that are associated with specific workloads, environment, business units, and owners.
- **Cost management and optimisation:** Tags enable you to group resources so that you can report on costs, allocate internal cost centers, track budgets, and forecast estimated cost.
- **Operations management:** Tags enable you to group resources according to how critical their availability is to the business.
- **Security:** Tags enable you to classify data by its security level.
- **Governance and regulatory compliance:** Tags enable you to indentidy resources that align with governance or regulatory compliance requirements, such as ISO 27001.
- **Workload optimised and automation:** Tags can help you visulatise all the resources that participate in complex deployments.


#### How do you manage resource tags?
You can add, modify, or delete resource tags through Windows PowerShell, the Azure CLI, Azure Resource Manager templates, the REST API, or the Azure portal.

You can use Azure Policy to enforce tagging and conventions.


#### Tagging structure
A resource tag consists of a name and value. You can assign more than one tag to a resource.

<img alt="Tag structure" src="/learning/cloud/images/tags-structure.png" width=300px>





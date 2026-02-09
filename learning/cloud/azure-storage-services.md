# Azure storage services
Azure Storage accounts offer a globally accessible, secure, and scalable namespace for data.

The type of storage account you use determines the storage services and redundancy options.

Redundancy options:
- Locally redundant storage (LRS)
- Geo redundant storage (GRS)
- Read access geo redundant storage (RA-GRS)
- Zone redundant storage (ZRS)
- Geo zone redundant storage (GZRS)
- Read access geo zone redundant storage (RA-GZRS)


#### Storage account endpoints
Azure Storage Accounts provide a unique namespace for data, requiring unique account names for each account.

When naming your storage account, keep this in mind:
- Storage account names must be between 3 and 24 characters and may contain numbers and lowercase letters only.
- Storage account name must be unique within Azure.

The following table shows the endpoint format for Azure storage services:
<img alt="Table of endpoint format">


-----

#### Azure storage redundancy
Azure Storage stores multiple copies of your data which ensures data protection and availability through redundancy, safeguarding against hardware failures, outages, and disasters.

When deciding which redundancy option is best, consider the tradeoffs between lower costs and higher availability. To help decide which option to use, you can use the following:
- How your data is replicated in the primary region
- Whether your data is replicated to a second region that is geographically distant to the primary region to protect against regional disasters.
- Whether your application requires read access to the replicated data in the secondary region if the primary region becomes unavailable.

#### Redundancy in the primary region
Data is always replicated three times in the primary region.

Azure storage offers two options for how your data is replicated:

**Locally redundant storage (LRS)**
LRS replicates your data three times within a single data center in the primary region. LRS provides a durability of 99.999999999%.

LRS is the cheapest redundancy option and offers the least durability. LRS protects your data against server rack and drive failures.

Because all the data is stored in one datacenter, it is not protected against disasters such as a fire or flooding. 

<img alt="Locally redundant storage" src="" width=200px>


**Zone redundant storage (ZRS)**
Zone redundant storage is the best option for availability. ZRS replicates your data cross three datacenters in the primary region. ZRS offers a durability of 99.9999999999%.

ZRS ensures data accessibility during zone unavailability, eliminating the need for client remounting. However, networking updates like DNS repointing may impact applications accessing data.

Microsoft recommends using ZRS in the primary region for scenarios that require high availability. ZRS is also recommended for restricting replication of data within a country or region to meet data governance requirements.


#### Redundancy in a secondary location
For applications that require high durability, you can backup your data in a secondary region that is hundreds of miles away from the primary region. This makes your data able to withstand catastrophic failures that prevent the data in the primary location from being recovered.

Data replication to the secondary region is done automatically at a set time. For example, every 15 minuets. This may potentially cause data loss if the primary region fails. Azure Storage’s typical RPO is under 15 minutes, though replication time to the secondary region is not guaranteed.


#### Geo redundant storage
GRS synchronously copies data three times within the primary region and asynchronously copies it to the secondary region. GRS offers a durability of 99.99999999999999%.

<img alt="Geo redundant storage" src="" width=200px>

#### Geo zone redundant storage
GZRS offers high availability and protection from regional outages by replicating data across three Azure availability zones and a secondary geographic region. GZRS provides 99.999999999999999% of durability.

-----

#### Azure storage services
The Azure storage platform includes the following data services:

- **Azure Blobs:** is a scalable object store for text and binary data, supporting big data analytics.
- **Azure Files:** Managed file shares for cloud or on premises deployments.
- **Azure Queues:** A messaging store for reliable messaging between application componu



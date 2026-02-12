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
- **Azure Queues:** a messaging store for reliable messaging.
- **Azure Disks:** Block level storage volumes for azure VMs.
- **Azure Tables:** NoSQL table option for structured, non relational data.

#### Benefits of Azure storage
- **Durability and high availability**
- **Secure**
- **Scalable**
- **Managed**
- **Accessible**

#### Azure Blobs
Azure Blob storage is an object storage solution for the cloud that can store massive amounts of unstructured data.

Blob storage can handle various data types, including binary data, encrypted messages, and custom formats, without requiring developers to manage physical storage.

Blob storage is ideal for:
- Serving images or documents directly to a browser.
- Storing files for distributed access.
- Streaming video and audio
- Storing data for backup and restore, disaster recovery, and archiving.
- Storing data for analysis by an on premises or Azure hosted services.


#### Accessing blob storage
Blob storage objects are globally accessible via HTTP/HTTPS. Access is possible through URLs, APIs, PowerShell, CLI, or client libraries for various languages.


#### Blob storage tiers
Azure offers various access tiers to manage cloud storage costs based on data access frequency and retention period. Organising data by these attributes helps balance storage costs with access needs.

The tiers are:
- **Hot access tier:** For storing data that is accessed frequently (images for your website).
- **Cool access tier:** For data that is infrequently accessed and stored for at least 30 days.
- **Cold access tier:** For storing data that is infrequently accessed and stored for at least 90 days.
- **Archive access tier:** For data that is rarely accessed and stored for at least 180 days, with flexible latency requirements.

The following considerations apply to the different tiers:
- Hot, cool, and cold access tiers can be set at the account level.
- Cool and cold data tolerate lower availability but require high durability, retrieval latency, and throughput. Lower availability SLAs and higher access costs are acceptable trade-offs for lower storage costs.
- Archive storage offers the lowest storage costs but highest rehydration and access costs.

#### Azure files
Azure File Storage provides fully managed, cloud-based file shares accessible via SMB or NFS protocols. SMB shares support Windows, Linux, and macOS clients, while NFS shares support Linux and macOS clients.

Key benefits:
- Shared access
- Fully managed
- Scripting and tooling
- Resiliency
- Familiar programmability

#### Azure Queues
Azure Queue storage is a service for storing large numbers of messages, accessible from anywhere via authenticated HTTP or HTTPS calls. It can be combined with compute functions like Azure Functions to trigger actions based on received messages.


#### Azure Disks
Azure Disk Storage, or Azure managed disks, are virtualised block-level storage volumes for Azure VMs, offering greater resiliency and availability than physical disks.

#### Azure tables
Azure Table Storage is a NoSQL datastore for structured, non-relational data, ideal for hybrid or multicloud solutions.

-----

#### Azure migration options
Azure supports both real time migration of infrastructure, applications, and data using **Azure Migrate** as well as asynchronous migration of data using Azure Data Box.

##### Azure migrate
Azure Migrate is a service that helps you migrate from an on premises environment to the cloud.

#### Integrated tools
In addition to working with tools from ISVs, the Azure Migrate hub also includes:

- **Azure Migrate: Discovery and assessment** Discover and assess on premises servers running on VMware, Hyper-V, and physical servers in preparations to migrate.

- **Azure Migrate: Server Migration**
- **Data Migration assistant** assess SQL servers and helps pinpoint potential problems blocking migration.

- **Azure Database Migration Service**
- **Azure App Service migration assistant**
- **Azure Data box** is used to move large amounts of offline data to Azure.


#### Azure Data Box
Azure Data Box is a physical migration service that securely transfers large amounts of data using a proprietary storage device with a maximum capacity of 80 terabytes.

Order the Data Box device from the Azure portal to import or export data. After transferring data, return the device for automatic upload (for data going into Azure).

Some use cases of importing include:
- Onetime migration
- Moving a media library from offline tapes into Azure.
- Migrate your VM farm, SQL server, and application to Azure.
- Initial bulk transfer
- Periodic uploads

Some use cases of exporting include:
- Disaster recovery
- Security requirements
- Migrate back to on premises or to another cloud service provider.

Data is securely erased from import and export devices according to NIST 800-88r1 standards.



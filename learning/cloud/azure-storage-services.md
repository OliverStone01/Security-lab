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
- Locally redundant storage (LRS)
- Zone redundant storage (ZRS)



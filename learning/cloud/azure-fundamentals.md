# Microsoft Azure

Microsoft Azure is a cloud computing platform offering a wide range of services, from simple web hosting to complex virtualised computers and AI/IoT capabilities.

### What is cloud computing?
Cloud computing is the delivery of computing services over the internet. Computing services include virtual machines, storage, databases, and networking. Cloud services have now also begun to include Internet of Things (IoT), machines learning (ML), and artificial intelligence (AI).

Using cloud computing means you do not need to physically buy a computer with specific specs to host your systems. Instead, you choose how much power and the features you need and the cloud provider will allocate you these resources in their datacenter.

This allows you to only pay for what you use and if you need more power or storage, you can increase these resources instantly.

You also do not need to manage the upkeep of any physical devices, this is all covered by the cloud provider.

-----

### Shared responsibility model
A shared responsibility model outlines who is responsible for what between the cloud provider and the consumer.

Providers responsibilities:
- Physical security.
- Power
- Cooling
- Network connectivity.


Consumers responsibilities:
- The data and information stored in the cloud.
- Devices that are allowed to connect to your cloud.
- The accounts and identities of the people, services, and devices within your organisation.


Shared responsibilities (Situational responsibilities):
If you were to host a virtual device on the cloud, the cloud provider would be responsible for updating the host device, but the user/organisation is responsible for updating the virtual device.

The shared responsibility model is heavily tied to the cloud service type:
- Infrastructure as a service (IaaS)
- Platform as a service (PaaS)
- Software as a service (SaaS)

<img alt="Shared responsibility model" src="" width=200px>

-----

### Cloud Models

The cloud model defines the deployment type of cloud resources. There are three main cloud models:
- Private
- Public
- Hybrid

**Private Cloud**
A private cloud is the evolution from a corporate datacenter. It delivers IT services over the internet which are used by a single entity. This gives more control back to the company and its IT department but this is at a much greater cost.

**Public Cloud**
A public cloud is built, controlled and maintained by a third party. Anyone can then purchase cloud services and access resources.

**Hybrid Cloud**
A hybrid cloud is a computing environment that uses both public and private clouds in an interconnected environment. The organisation can run a private cloud and then use public clouds to increase resources (power, storage) during surges of demand. Hybrid clouds also provide an extra layer of security by allowing flexibility on which services are kept on either the public or private cloud.

<img alt="Table comparing cloud models" src="" width=200px>


**Multi-Cloud**
A multi-cloud scenario is when you use multiple public cloud providers. This can be because you started with one provider and then begun using a different provider and are in the process of migrating.

**Azure Arc**
Azure Arc is a set of technologies that helps manage your cloud environment. You can use Azure Arc to control all cloud models.

**Azure VMware Solution**

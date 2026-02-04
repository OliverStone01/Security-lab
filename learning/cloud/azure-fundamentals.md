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
Azure VMware solutions lets you run your VMware workloads in Azure with seamless integration and scalability.

-----

### Consumption-based Model

When comparing IT infrastructure models, there are two types of expenses:
- Capital expenditure (CapEx)
- Operational expenditure (OpEx)

**CapEx** is typically a one time, up front expenditure to purchase or secure tangible resources.
- New building
- Repaving the parking lot
- Building a datacenter
- Buying a company vehicle


**OpEx** is spending money on services or products over time.
- Renting a convention center
- Leasing a company vehicle
- Signing up for cloud services

Cloud computing falls under OpEx because the cost depends on the amount of consumption used. There is also no upfront cost for physical infrastructure. If you do not use the resources this month, you don't pay anything (Pay as you go).

-----

### High availability and scalability in the cloud

When building and deploying a cloud application, the two biggest considerations are **uptime** (availability) and **the ability to handle demand**.

**High availability**
High availability focuses on ensuring maximum availability, regardless of disruption or events that may occur. It's important that resources are available when needed.

When architecting your solution, you need to account for **service availability guarantees**. Azure is a highly available cloud environment with uptime guarantees depending on the service.

These guarantees are part of the **service-level agreements (SLAs)**.

A service level agreement sets out what the uptime for a cloud service should be. If the service falls below this up time, the organisation may be entitled to discounted costs.

A service level agreement with a 99% uptime guarantee means that the service can be down for 423 minuets a month. Compared to a 99.9% uptime which only allows for 43.2 minuets of downtime a month.

**Scalability**
A major benefit of cloud computing is the scalability of cloud resources. Scalability refers to the ability to adjust resources to meet demand.

Scaling generally comes in two varieties: vertical and horisontal.

- Vertical Scaling = Focused on increasing or decreasing the capabilities of resources. For example, If you needed to increase processing power, you could vertically scale up to add more CPIs or RAM to the virtual machine.

- horisontal Scaling = Adding or subtracting the number of resources. For example, if you suddenly had a large increase in demand, you could deploy more resources (automatically or manually) like more virtual machines or containers.

-----

### Reliability and predictability in the cloud

**Reliability**
Reliability is the ability of a system to recover from failures and continue to function. It's also one of the pillars of the **Microsoft Azure Well-Architected Framework**.

The cloud has a decentralised design by deploying resources around the world. This means that if some region is affected, resources can be pulled from other regions.

**Predictability**
Predictability is the ability to predict performance and cost.

**Performance predictability** focuses on predicting the resources needed to deliver a positive experience for customers. To improve performance predictability, we can use, autoscaling, load balancers, and high availability. 

**Cost predictability is focused on predicting or forecasting the cost of the cloud. With the cloud, you can track resource use in real time, monitor use over time, apply data analytics to predict future costs and adjust resources as needed.

-----

### Benefits of security and governance in the cloud.

No matter the cloud model you are using, cloud features support governance and compliance. Things like set templates help ensure that all deployed resources meet corporate standards and government regulatory requirements. You can also update your deployed resources to a new standard as soon as standards change.

Cloud based auditing is used to help flag any resources that are out of compliance with your corporate standards and provides mitigations strategies.

If you want maximum control of security, **Infrastructure as a service (IaaS)** provides you with physical resources but lets manage the operating systems and installed software, including patches and maintenance. With Platform as a service (PaaS), updates, patches, and maintenance is taken care of automatically. 

Because the cloud is intended to as an over the internet delivery of resources, cloud providers are well suited to handle things like distributed denial of service (DDoS) attacks.

-----

### Benefits of manageability in the cloud

A major benefit of cloud computing is the manageability options. There are two types of manageability for cloud computing:

**Management of the cloud**
Management of the cloud is managing your cloud resources. In the cloud, you can:
- Automatically scale resources based on need.
- Deploy resources based on preconfigured templates, removing the need for manual configuration.
- Monitor the health of resources and automatically replace failing resources.
- Receive automatic alerts based on configured metrics.

**Management in the cloud**
Management in the cloud is how you're able to manage your cloud environment and resources. You can manage these:
- Through a web portal.
- Using a command line interface.
- Using APIs.
- Using PowerShell.

-----

### Infrastructure as a Service (IaaS)
Infrastructure as a service is the most flexible type of cloud services as it provides you the maximum amount of control for your cloud resources. In a IaaS model, the cloud provider is responsible for maintaining the hardware, network connection, and the physical security. You are responsible for everything else.

**Scenarios**
Some common scenarios where IaaS might be used:
- Lift and shift migration: You are setting up cloud resources similar to your on premises datacenter and then migrating to the cloud environment.

- Testing and development: You have established configurations for development and test environments that you need to replicate quickly.

-----




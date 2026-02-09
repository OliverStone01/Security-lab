# Azure compute and networking services

### Azure virtual machines
Azure virtual machines allow you to create and host virtual machines in the cloud.

VM's are a form of IaaS (Infrastructure as a service) in form of a virtualised server.

You can customise the software running on your VM.

VMs are an ideal choice when you need:
- Control over operating system.
- Ability to run custom software.
- To use custom hosting configurations.

Azure VMs give you the flexibility of virtualisation without having to buy and maintain the physical hardware the vms are hosted on. However, as an IaaS, you still need to configure, update, and maintain the software that runs on the VM.

You can create and use images to rapidly build VMs.

#### Scale VMs in Azure
You can run single VMs for testing, development, or minor tasks. Or you can group VMs together to provide high availability, scalability, and redundancy.

Azure can manage the grouping of VMs with features such as scale sets and availability sets.


#### Virtual machine scale sets
Virtual machine scale sets let you create and manage a group of identical, load balanced VMs. Scale sets allow you to centrally manage, configure, and update a large number of VMs in minuets. The number of VM instances can automatically increase or decrease in response to demand or based on a defined schedule.

Scale sets automatically deploy a load balancer to make sure that your resources are being used efficiently.


#### Virtual machine availability sets
Virtual machine availability sets are another tool to help you build a more resilient, highly available environment.

Availability sets are designed to ensure that VMs stagger updates and have varied power and network connectivity.

Availability sets accomplish these objectives by grouping VMs in two ways:

- **Update domain**: The update domain groups VMs that can be rebooted at the same time. An update group going through the update process is given 30 minuets to recover before maintenance on the next update domain starts.

- **Fault domain**: The fault domain groups VMs by common power source and network switch. An availability set splits your VMs into three fault domains. This helps protect against a physical power or networking failure by having VMs in different fault domains.

There are no additional costs for configuring an availability set. You only pay for the VM instances you create.


**When to use VMs:**
- During testing and development.
- When running applications in the cloud.
- When extending your datacenter to the cloud.
- During disaster recovery.

**VM Resources**
- Size (Purpose, number of processor cores, and amount of RAM)
- Storage disks (hard disk drives, solid state drives, etc.)
- Networking (Virtual network, public IP addresses, and port configurations)

-----

#### Azure virtual desktop
Another type of virtual machine is the **Azure Virtual Desktop**. Azure virtual desktop is a desktop and application virtualisation service that runs on the cloud. It enables you to use cloud-hosted version of Windows from any location.

Azure virtual desktop works across devices and operating systems, and works with apps that you can use to access remote desktops or most modern browsers. 


#### Enhance security
Azure virtual desktop provides centralised security management for users' desktops with Microsoft Entra ID. The data and apps are separated from the local hardware which reduces the risk of confidential data being left on a personal device is reduced.

User sessions are isolated in both single and multi-session environments.

With Azure virtual desktop you can use Windows 10 or Windows 11 Enterprise multi-session.

-----

#### Azure containers
Virtual machines run single operating system per machine. If you want to run multiple instances of an application on a single host machine, containers are an excellent choice.

#### What are containers?
Containers, like Docker, are a lightweight, agile alternative to virtual machines for running applications. They allow for dynamic creation, scaling, and quick restarts, making them ideal for responding to changes in demand.

Virtual machines are whole computers hosted on the cloud. Containers are only one application and its dependencies.

Container cluster orchestration allows you to control a group of containers including spinning up new containers.

#### Azure container instances
Azure container instances offer the fastest and simplest way to run a container in Azure without having to manage any virtual machines or any other services.

Azure container instances are a **Platform as a Service (PaaS)**.

Azure container instances allow you to upload your containers and then the service runs the container for you.

#### Azure container apps
Azure container apps are similar to container instances but they have the added benefits of ability to incorporate load balancing and scaling.

#### Azure kubernetes services
Azure kubernetes services (AKS) is a container orchestration service.

#### Use containers in your solutions
Containers are used to create microservice architecture. This is when you break a solution into smaller pieces. For example, you may split a website into a container for your front end, one for backend, and one for storage.

This allows you to scale parts of the sites without wasting money or resources on unnecessary parts of the site.

-----

#### Azure functions
Azure Functions is a serverless compute option that eliminates the need to maintain virtual machines or containers.

#### Serverless computing
Serverless computing is where you can host your application without needing to focus on the operating system or the host device.

This is a good solution for scaling and you are only charged for what you use.

#### Azure functions
Azure functions is ideal when you are only concerned about the code running your service and not able the underlying platform or infrastructure.

Functions are commonly used when you need to perform work in response to an event, timer, or message from another Azure service.

Functions scale automatically based on demand.

Azure functions runs your code when it triggers and automatically deallocate resources when the function is finished. In this model, you are only charged for CPU time used while your function runs.

Functions can be either stateless or stateful. When they are stateless, they behave as if they restart ever time they respond to an event. When they are stateful, a context is passed through the function to track prior activity.

Functions are a key component of serverless computing.

-----

#### Other Application hosting options


#### Azure app services
App service enables you to build and host web apps, background jobs, mobile back ends, and automatic scaling and high availability. App service support Windows and Linux. It enables automated deployment from GitHub, Azure DevOps, or and Git repo.

Azure app service is a HTTP-based service for hosting web applications, REST APIs, and mobile back ends.

Azure app services supports programming languages like **Java, PHP, Python, and JavaScript** and frameworks such as **.NET and .NET core**.

#### Types of app services
With app services, you can host common app service styles like:

- Web apps
- API apps
- Webjobs
- Mobile apps

App services handles most of the infrastructure decisions you deal with in hosting web-accessible apps:
- Deployment and management are integrated into the platform.
Endpoints can be secured.
Sites can be scaled quickly to handle high traffic loads.
The built in load balancing and traffic manager provide high availability.

#### Mobile apps
Use the mobile apps feature of app service to quickly build a back end for IOS and Android apps. You can:
- Store mobile app data in a cloud-based SQL database.
- Authenticate customers against common social providers such as MSA, Google, X, and Facebook.
- Send push notifications.
- Execute custom back end logic in C# or Node.js.


-----

#### Azure virtual networking
Azure virtual networks and subnets connect Azure resources, enabling communication within Azure, with the internet, and on-premises networks.

Azure virtual networks provide the following key networking capabilities:
- Isolation and segmentation
- Internet communications
- Communicate between Azure resources
- Communicate with on premises resources
- Route network traffic
- Filter network traffic
- Connect virtual networks


Azure virtual networking supports both public and private endpoints to enable communications between external or internal resources with other internal resources.

- Public endpoints have a public UP address and can be accessed from anywhere in the world.
- Private endpoints exist within a virtual network and have a private IP address from within the address space of that virtual network.

#### Isolation and segmentation
Azure virtual network allows you to create multiple isolated virtual networks. When you setup a virtual network, you define a private IP address space by using either public or private IP address ranges.

The IP range only exists within the virtual network and isn't internet routable. You can divide that IP address space into subnets and allocate part of the defined address space to each named subnet.

For name resolution, you can use the name resolution service build into Azure. You also can configure the virtual network to use either an internal or external DNS server.

#### Internet communications
Yuo can enable incoming connections from the internet by assigning a public IP address to an Azure resource, or putting the resource behind a public load balancer.

#### Communicate between Azure resources
You want to enable Azure resources to communicate securely with each other. You can do in one of two ways:
- Virtual networks can connect not only VMs but other Azure resources, such as the App service environment for power apps, Azure kubernetes service, and Azure virtual machine scaler sets.
- Service endpoint can connect to other Azure resource types, such as Azure SQL databases and storage accounts.


#### Communicate with on premises resources
Azure virtual networks connect on-premises and Azure resources, creating a network spanning both environments.

There are three mechanisms for you to achieve this connectivity:
- Point to site virtual private network connections are from a computer outside your organisation back into your corporate network. In this case, the client computer initiates an encrypted VPN connection to connect to the Azure virtual network.
- Site to site virtual private networks link your on premises VPN devices or gateway to the Azure VPN gateway in a virtual network. In effect, the devices in Azure can appear as being on the local network. The connection is encrypted and works over the internet.
- Azure ExpressRoute provides a dedicated private connectivity to Azure that doesn't travel over the internet. ExpressRoute is useful for environments where you need greater bandwidth and even higher levels of security.

#### Route network traffic
By default, Azure routes traffic between subnets on any connected virtual networks, on premises networks, and the internet. You also can control routing and override those settings, as followed:
- Route table allows you to define rules about how traffic should be directed. You can create custom route tables that control how packets are routed between subnets.
- Border Gateway Protocol (BGP) works with Azure VPN gateways, Azure Route Server, or Azure ExpressRoute to propagate on premises BGP routes to Azure virtual networks.


#### Filter network traffic
Azure virtual networks enable you to filter traffic between subnets by using the following approaches:
- Network security groups are Azure resources that can contain multiple inbound and outbound security rules. You can define these riles to allow or block traffic, based on factors such as source and destination IP address, port, and protocol.
- Network virtual appliances are specialised VMs that can be compared to a hardened network appliance. A network virtual appliance carries out a particular network function, such as running a firewall or performing wide area network (WAN) optimisation.


#### Connect Virtual networks
Virtual network peering connects two virtual networks directly, enabling private communication between resources across regions. User-defined routes (UDR) provide control over routing tables within and between virtual networks.

-----

#### Azure virtual Private Networks
A virtual private network (VPN) is an encrypted tunnel typically deployed to connect two networks over the internet. Traffic is encrypted in transport to prevent eavesdropping.

#### VPN gateways
A VPN gateway is a type of virtual network gateway. Azure VPN gateway instances are deployed in a dedicated subnet of virtual network and enable the following:

- Connect on-premises datacenters to virtual networks through a site-to-site connection.
- Connect individual devices to virtual networks through a point-to-site connection.
- Connect virtual networks to other virtual networks through a network-to-network connection.

You can use one gateway to connect to multiple locations, which includes other virtual networks or on-premises datacenters.

When setting up a VPN gateway, you must specify the type of VPN:
- Policy Based
- Route Based

The difference between the two is how they determine which traffic needs encryption. In Azure, regardless of the VPN type, the method of authentication is a pre shared key.

- Policy-based VPN gateways encrypt packets based on statically defined IP address sets for each tunnel.
- Route-based VPNs, preferred for on-premises devices, use IPSec tunnels modelled as network interfaces. IP routing determines which tunnel interface to use for packet transmission.

Use a route based VPN if you need:
- Connections between virtual networks.
- Point-to-site connections
- Multi site connections.
- Coexistence with an Azure ExpressRoute gateway.

#### High available scenarios
When configuring a VPN to keep your information safe, you also want to make sure that it's highly available and fault tolerant.

**Active/Standby**  
VPN gateways are deployed as two instances in an active/standby configuration for high availability. The standby instance automatically takes over during planned maintenance or unplanned disruptions, with minimal connection interruptions.

**Active/Active**  
BGP routing protocol support enables active/active VPN gateway deployment with unique public IP addresses for each instance.

**ExpressRoute failover** 
A VPN gateway can be configured as a secure failover path for ExpressRoute connections, providing an alternative method of connectivity in case of an ExpressRoute circuit outage.

**Zone redundant gateways**
VPN and ExpressRoute gateways can be deployed in a zone-redundant configuration in Azure availability zones, providing resiliency, scalability, and higher availability. This configuration requires different SKUs and Standard public IP addresses.

-----

#### Azure ExpressRoute
ExpressRoute circuit lets you extend your on premises networks into the Microsoft cloud over a private connection.

ExpressRoute connections offer reliable, high-speed, and secure connectivity, bypassing the public Internet for enhanced performance.

**Benefits of ExpressRoute**  
- Microsoft cloud services connectivity across all regions.
- ExpressRoute Global Reach provides global connectivity to Microsoft services.
- Dynamic routing between your network and Microsoft via Border Gateway Protocol (BGR).
- Built in redundancy in every peering location for higher reliability.


#### ExpressRoute connectivity models
- **CloudExchange colocation:** Colocation at a cloud exchange enables requesting a virtual cross-connect to the Microsoft cloud.

- **Point to Point Ethernet connection:** Point-to-point ethernet connection connects a facility to the Microsoft cloud.

- **Any to Any networks:** 
Azure integrates with WAN connections, providing seamless connectivity between offices and data centers.

- **Directly from ExpressRoute sites:**
ExpressRoute Direct offers dual 100 Gbps or 10-Gbps connectivity to Microsoft’s global network at strategically distributed peering locations.

#### Security considerations
With ExpressRoute, your data isn't traveling over the public internet which reduces the risk associated with internet communications although ExpressRoute connections still route DNS queries, CRL checks, and CDN requests over the public internet.

-----

#### Azure DNS
Azure DNS is a hosting service for DNS domains that provides name resolutions by using Microsoft Azure infrastructure.

#### Benefits of Azure DNS
- Reliability and performance
- Security
- Ease of use
- customisable virtual networks
- Alias records

Azure DNS uses Anycast networking.




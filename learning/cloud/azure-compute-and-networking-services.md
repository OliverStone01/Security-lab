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


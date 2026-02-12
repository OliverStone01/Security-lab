# Azure identity, access, and security

#### Azure directory services
Microsoft Entra ID is a directory service for accessing Microsoft and custom cloud applications, and maintaining on-premises Active Directory.

Microsoft Entra ID is a cloud-based identity and access management service, similar to Active Directory but managed by Microsoft for global availability.

Connecting Active Directory with Microsoft Entra ID enables Microsoft to detect suspicious sign in attempts, such as those from unexpected locations or unknown devices.

Microsoft Entra ID is used by:
- IT administrators
- App developers
- Users
- Online service subscribers

Microsoft Entra ID provides the following services:
- Authentication
- Single sign on
- Application management
- Device management


Microsoft Entra connect synchronises changes between on premises environments and cloud deployed environments.


#### Microsoft Entra Domain services
Microsoft Entra Domain Services provides managed domain services without the need to deploy and manage domain controllers in the cloud.

Microsoft Entra Domain Services allows legacy applications to run in the cloud without modern authentication or on-premises AD DS lookups.

Microsoft Entra Domain Services creates a unique domain name and deploys two Windows Server domain controllers in an Azure region. The Azure platform manages these domain controllers, including backups and encryption.

Managed domains synchronise from Microsoft Entra ID, but not back. Microsoft Entra Connect synchronises on-premises AD DS to Microsoft Entra ID, then to the managed domain.

Azure applications, services, and VMs can utilise Microsoft Entra Domain Services features like domain join, group policy, LDAP, and Kerberos/NTLM authentication.Azure applications, services, and VMs can utilise Microsoft Entra Domain Services features like domain join, group policy, LDAP, and Kerberos/NTLM authentication.

-----

#### Azure conditional access
Conditional access is a tool that Microsoft Entra ID uses to allow or deny access to resources based on identity signals including who the user is, where the user is, and what device the user is using.

-----

#### Microsoft defender for the cloud
Defender for Cloud monitors cloud, on-premises, hybrid, and multicloud environments for security posture management and threat protection.


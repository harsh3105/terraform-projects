# VPC - Virtual Private Cloud

## Foundation

### Real-Life Analogy:

- **Situation**: Imagine a village where residents are too lazy to build their houses.
  
- **Solution**: ABC, a wise individual, saw an opportunity. He purchased land intending to build houses based on people's requirements.

- Some villagers noticed that houses were being built too closely, raising security concerns.

- ABC proposed creating a secured group (akin to a gated community). Only known individuals can access this area, and there's a guide to help navigate within. Another guide assists visitors in finding whom they are supposed to meet.

### AWS and VPC:

- AWS began establishing data centers.
  
- Companies/startups, instead of setting up their infrastructure, needed a server.

- To address the security concerns -> Enter VPC, managed by a DevOps Engineer.

    - **Size of VPC**: Defined by an IP address range. 
        - Example: `172.16.0.0/16` translates to `255*255` or 65,536 addresses.
      
    - If a big project contains multiple sub-projects, the IP address range (or subnet) can be divided.
        - Examples: `172.16.1.0/24`, `172.16.2.0/24`, ... `172.16.255.0/24` (each range has 255 IPs).

    - **Gateway**: Essential for external access. Without it, the VPC remains inaccessible.

    - **Public Subnet**: After entering the VPC, this can be accessed via the internet gateway. It contains:
        - **Load Balancer (Target group)**.
        - **Router with Route Table**: Dictates how requests are routed within the subnet.

    - To access a specific address, like `172.16.3.1/...`:
        - The path involves passing through the internet gateway, entering the public subnet, navigating via the Elastic Load Balancer (ELB), and reaching the desired private subnet.
        - Route tables are used to set the path, and each subnet uses Network Access Control Lists (NACLs) to reject or accept requests.
      
    - **NAT Gateway**: When an application within a private subnet wants to fetch something from the internet, it's unsafe to expose the private IP directly. To maintain security:
        - Masking via router is termed as NAT Gateway.
        - Masking via load balancer is referred to as Source NAT (SNAT).

    - **VPC Flow Logs**: Records traffic logs for tracking and monitoring. However, note that AWS charges for this service.


## VPC components 

The following features help you configure a VPC to provide the connectivity that your applications need:

Virtual private clouds (VPC)

    A VPC is a virtual network that closely resembles a traditional network that you'd operate in your own data center. After you create a VPC, you can add subnets.
Subnets

    A subnet is a range of IP addresses in your VPC. A subnet must reside in a single Availability Zone. After you add subnets, you can deploy AWS resources in your VPC.
IP addressing

    You can assign IP addresses, both IPv4 and IPv6, to your VPCs and subnets. You can also bring your public IPv4 and IPv6 GUA addresses to AWS and allocate them to resources in your VPC, such as EC2 instances, NAT gateways, and Network Load Balancers.

Network Access Control List (NACL)

    A Network Access Control List is a stateless firewall that controls inbound and outbound traffic at the subnet level. It operates at the IP address level and can allow or deny traffic based on rules that you define. NACLs provide an additional layer of network security for your VPC.
   
Security Group

    A security group acts as a virtual firewall for instances (EC2 instances or other resources) within a VPC. It controls inbound and outbound traffic at the instance level. Security groups allow you to define rules that permit or restrict traffic based on protocols, ports, and IP addresses.  

Routing

    Use route tables to determine where network traffic from your subnet or gateway is directed.
Gateways and endpoints

    A gateway connects your VPC to another network. For example, use an internet gateway to connect your VPC to the internet. Use a VPC endpoint to connect to AWS services privately, without the use of an internet gateway or NAT device.
Peering connections

    Use a VPC peering connection to route traffic between the resources in two VPCs.
Traffic Mirroring

    Copy network traffic from network interfaces and send it to security and monitoring appliances for deep packet inspection.
Transit gateways

    Use a transit gateway, which acts as a central hub, to route traffic between your VPCs, VPN connections, and AWS Direct Connect connections.
VPC Flow Logs

    A flow log captures information about the IP traffic going to and from network interfaces in your VPC.
VPN connections

    Connect your VPCs to your on-premises networks using AWS Virtual Private Network (AWS VPN).


## Resources 

VPC with servers in private subnets and NAT

https://docs.aws.amazon.com/vpc/latest/userguide/vpc-example-private-subnets-nat.html
# Route53: Understanding the What and Why

**Route53** provides DNS (Domain Name System) as a service.

## Key Concepts:

- **DNS (Domain Name System)**: It's a service that translates human-friendly domain names into IP addresses, making internet resources accessible.

- **EC2**: Represents compute-as-a-service in AWS.

- Everyday internet usage heavily relies on DNS. When accessing sites like `amazon.ca`, we're indirectly leveraging DNS. It's rare to interact directly with IP addresses; instead, we use more human-readable domain names.

- A crucial function of DNS is to map domain names to their corresponding IP addresses. In practical deployments, domain names typically map to IP addresses of load balancers rather than individual servers.

## Practical Implementation:

1. **Load Balancer IP Mapping**: 
    - When creating a load balancer, the associated VPC assigns it an IP address. However, directly sharing this IP with users isn't ideal because:
        - IPs are hard to remember.
        - The load balancer's IP can change, for instance, upon restarting.

2. **DNS Records**:
    - DNS maintains numerous records, primarily responsible for mapping domain names to IP addresses.

3. **Route53 in AWS**:
    - AWS's offering for DNS as a service is Route53. Typically, Route53 sits in front of a load balancer. When a request arrives, it first interacts with the DNS service before proceeding with the standard flow.

4. **Domain Registration in AWS**:
    - Users can either purchase new domains directly through AWS or utilize their existing ones.
    - After acquiring a domain, users need to set up "hosted zones". Within these zones, DNS records reside.
    - If a domain matches an entry in the DNS, the system retrieves the associated IP and facilitates the connection.

5. **Health Checks with Route53**: 
    - Route53 also offers functionality for health checks, ensuring services it routes traffic to are operational.

With Route53, AWS simplifies domain management and DNS configurations, ensuring web resources are accessible and reliable.

# AWS VPC

## Security in AWS VPC

- **Security Group and NACL**: 
    - Both are crucial components that come into play at the endpoint.
    - **Security Group**: Implemented at the EC2 instance level.
    - **NACL (Network Access Control List)**: Adds an additional layer of security at the subnet level.

- **Shared Responsibility**:
    - AWS administration and DevOps must collaboratively ensure security.

## Understanding Traffic

- **Path**: A user accessing an application has to travel a long path, with the last parts being NACL and Security Groups.

- **Inbound vs. Outbound Traffic**:
    - **Inbound Traffic**: When a user attempts to access an application.
    - **Outbound Traffic**: When an application seeks to connect to the external world, e.g., google.com.
    
- **Default AWS Security**: 
    - AWS provides a default VPC, typically paired with an EC2 instance.
    - By default, this allows all outbound traffic except port 25.
    - However, all inbound traffic is denied. Inbound configurations utilize the security group, specifying port numbers or IP addresses from which traffic is acceptable.

    > **Note**: Port 25 is restricted for outbound traffic to prevent email spamming and IP address disclosures.

## Role of NACL

- **What is NACL?**: It's the Network Access Control List, which provides security configurations at the subnet level, going beyond instance-level security.

- **Example Scenario**: 
    - A developer might configure an EC2 instance to allow all traffic, neglecting security best practices.
    - In such cases, a DevOps engineer can step in and use NACL to define and deny specific types of traffic at the subnet level. This adds an additional layer of security, especially if a developer's settings were too permissive.

- **Advantage**: When a DevOps engineer configures NACL, it's applied across all instances in that subnet, ensuring consistent security settings.

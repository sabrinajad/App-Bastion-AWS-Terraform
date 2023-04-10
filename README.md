## lab2 terrafirm iti:
* - create vpc
* - create internet gateway
* - create natgateway
* - create public route table
* - create private route table
* - create public route
* - create private route
* - create two public subnets
* - create two private subnets
* - attach public route table to public subnets
* - attach private route table to private subnets
* - create s3 backend
*  - create dynamodb state lock
* - create security group which allow ssh from 0.0.0.0/0
* - create security group that allow ssh and port 3000 from vpc cidr only
* - create ec2 (bastion) in public subnet with security group from 7
* - create ec2 (application) private subnet with security group from 8
* - create two workspaces dev and prod
* - create two variable definition files(.tfvars) for the two environments
* - separate network resources into network module
* - apply your code to create two environments one in us-east-1 and eu-central-1

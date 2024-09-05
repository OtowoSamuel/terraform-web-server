# Infrastructure as Code with Terraform

## Overview

This project demonstrates how to provision a simple web server on AWS using Terraform. It includes configuration files for deploying an EC2 instance with the necessary setup to run a web server.

## Features

- Provisioning of an AWS EC2 instance
- Use of Terraform for Infrastructure as Code (IaC)
- Basic setup for deploying a web server

## Prerequisites

Before running the Terraform scripts, ensure you have the following installed:

- [Terraform](https://www.terraform.io/downloads.html)
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

## Getting Started

### Clone the Repository

    ```bash
    git clone git@github.com:OtowoSamuel/terraform-web-server.git
    cd terraform-web-server
    
### Configure AWS Credentials
Ensure your AWS credentials are configured. You can use the AWS CLI to configure your credentials:
    
    aws configure


### Initialize Terraform
Run the following command to initialize Terraform. This will download the required provider plugins.

    terraform init

### Plan and Apply
Generate an execution plan and apply the configuration to create the resources.

    terraform plan
    terraform apply

### Directory Structure

main.tf - The main Terraform configuration file that defines the resources.
.terraform/ - Directory where Terraform stores its state files and provider plugins.
.terraform.lock.hcl - The file that locks the Terraform provider versions.
terraform.tfstate - The state file that Terraform uses to keep track of resources.


### Contributing
Contributions are welcome! Please follow these steps:
- Fork the repository.
- Create a feature branch (git checkout -b feature-branch).
- Commit your changes (git commit -am 'Add new feature').
- Push to the branch (git push origin feature-branch).
- Create a new Pull Request.

### Acknowledgments
-  [Terraform Documentation](https://developer.hashicorp.com/terraform/docs)
-  [AWS Documentation](https://docs.aws.amazon.com/ec2/)


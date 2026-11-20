# Project 1: Deploy a Linux EC2 Web Server Using Terraform

## Project Overview

This project demonstrates how to deploy a Linux-based Apache web server on AWS using Terraform (Infrastructure as Code).

Terraform automates the creation of AWS infrastructure, while a Bash startup script installs and configures Apache to host a simple HTML webpage.

## Technologies Used

- **AWS EC2** – Hosts the Linux web server
- **Terraform** – Automates infrastructure provisioning
- **Amazon Linux 2023** – Operating system
- **Apache HTTP Server** – Serves the webpage
- **Bash** – Automates Apache installation
- **AWS VPC** – Provides network isolation
- **Git and GitHub** – Source code version control

## AWS Infrastructure

The Terraform configuration creates the following resources:

1. **VPC** – A virtual network with CIDR `10.0.0.0/16`.
2. **Public Subnet** – A subnet with CIDR `10.0.1.0/24`.
3. **Internet Gateway** – Provides connectivity to the internet.
4. **Route Table** – Routes outbound internet traffic through the Internet Gateway.
5. **Security Group** – Allows HTTP traffic on TCP port 80.
6. **EC2 Instance** – Runs Amazon Linux 2023 and Apache.

The infrastructure is deployed in the AWS Mumbai region (`ap-south-1`).

## Project Files

- `main.tf` – Defines the AWS infrastructure.
- `user_data.sh` – Installs Apache and creates the HTML webpage automatically.
- `outputs.tf` – Displays the EC2 public IP and website URL.
- `.gitignore` – Excludes Terraform state and other sensitive files.
- `.terraform.lock.hcl` – Records Terraform provider selections.

## Deployment Steps

**1. Configure AWS CLI**

Configure access using an authorized AWS account and approved credentials.

**2. Initialize Terraform**

`terraform init`

**3. Format and validate Terraform configuration**

`terraform fmt`

`terraform validate`

**4. Preview infrastructure changes**

`terraform plan`

**5. Deploy AWS infrastructure**

`terraform apply`

Review the plan and approve the changes.

**6. Get the website URL**

`terraform output website_url`

**7. Test the website**

Open the generated URL in a web browser to verify the Apache web server is functioning.

## Expected Output

The deployed webpage displays:

**Welcome to My AWS Web Server!**

**Accenture DevOps Capstone Project**

Deployed using Terraform on AWS EC2.

## Testing and Verification

The website was successfully accessed using the EC2 public IP address.

The deployment was verified by:

- Successful Terraform infrastructure provisioning.
- EC2 instance running in AWS.
- Apache serving the HTML webpage.
- Webpage accessible through HTTP on port 80.

## Security and Cleanup

- The example deploys an HTTP test website and does not configure HTTPS.
- Public HTTP access should be used only in an authorized lab environment.
- AWS credentials and Terraform state files must not be committed to GitHub.
- Infrastructure can be removed using `terraform destroy` after evaluation, when authorized.

## Project Outcome

Successfully deployed a Linux EC2 web server on AWS using Terraform and Bash automation.

This project demonstrates practical knowledge of Infrastructure as Code, AWS networking, Linux server provisioning, and web server deployment.

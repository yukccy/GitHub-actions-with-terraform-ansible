# Using GitHub Actions to create Nginx web server by Terraform and Ansible
This repository includes the Terraform and Ansible files to provision following components,
- An EC2 instance exposed port 80 and 22
- Install nginx package by yum package manager
- Any neccessary resources on AWS

And two GitHub Actions workflow files for,
- Apply Terraform scripts and run Ansible playbook
- Upload Terraform state file to specified S3 bucket
- Upload Terraform dependencies lock file to specified S3 bucket
- Destroy all the resources created by Terraform

## Usage
1. Fork this repository
2. Go to your repository's Settings > Secrets and variables > Actions
3. Add 4 repository secrets by using the names as the image below

![Alt text](<repo_secret.png>)
```
AWS_ACCESS_KEY_ID is your AWS access key ID
AWS_SECRET_ACCESS_KEY is your AWS secret access key
EC2_PRIVATE_KEY is the private key of your SSH key pair
EC2_PUBLIC_KEY is your public key of your SSH key pair
```
### Trigger creation workflow
1. Go to your repository's Actions
2. Choose `Create a Nginx Web Server on your AWS account` from the left menu
3. Click the `Run workflow` button and fill your AWS region and S3 bucket name
4. Trigger the workflow

### Trigger deletion workflow
1. Go to your repository's Actions
2. Choose `Clean up all resources created by Terraform and Ansible` from the left menu
3. Click the `Run workflow` button and fill your AWS region and S3 bucket name
4. Trigger the workflow
# Enforce S3 Bucket Versioning with Ansible

## Overview
This Ansible playbook automates the process of ensuring that all S3 buckets in an AWS account have versioning enabled. This is an essential security and compliance measure to prevent data loss and support data recovery.

## Features
- Lists all S3 buckets in the AWS account.
- Enables versioning on all existing buckets.
- Uses Ansible's `amazon.aws.s3_bucket` module to enforce policy-as-code.

## Prerequisites
### 1. Install Ansible and AWS Collection
Ensure you have Ansible installed on your system. If not, install it using:
```sh
pip install ansible
```
Install the required AWS collection:
```sh
ansible-galaxy collection install amazon.aws
```

### 2. Configure AWS Credentials
Ensure your AWS credentials are configured using either of the following methods:

- **Using AWS CLI:**
  ```sh
  aws configure
  ```
- **Using Environment Variables:**
  ```sh
  export AWS_ACCESS_KEY_ID=your-access-key
  export AWS_SECRET_ACCESS_KEY=your-secret-key
  export AWS_DEFAULT_REGION=your-region
  ```

## Usage
1. Clone the repository:
   ```sh
   git clone https://github.com/N1T5H/Ansible_Projects.git
   cd policy-as-code
   ```
2. Run the playbook:
   ```sh
   ansible-playbook s3_versioning.yaml
   ```


## Best Practices
- **Use IAM Roles**: Instead of storing AWS credentials, use IAM roles if running on AWS infrastructure.
- **Test in a Non-Production Environment**: Run this on a test account before applying to production.
- **Set Up Logging & Monitoring**: Enable CloudTrail logging to monitor changes in S3 bucket configurations.

## Contributing
Feel free to fork this repository, submit issues, or create pull requests to improve functionality.

## License
This project is licensed under the MIT License. See `LICENSE` for details.


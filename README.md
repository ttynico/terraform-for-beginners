# Terraform for Beginners

A hands-on, progressive collection of Terraform examples covering the fundamentals — from basic commands through modules and a working web server deployment on AWS.

## Structure

| Folder | Topic |
|---|---|
| [01-Basic-Commands](./01-Basic-Commands) | Core Terraform commands using the Docker provider |
| [02-Lock-and-State-Files](./02-Lock-and-State-Files) | Understanding state files and the lock file |
| [03-Variables](./03-Variables) | Introducing input variables |
| [04-Variables-Continued](./04-Variables-Continued) | Using `terraform.tfvars` for variable values |
| [05-AWS-Setup-and-Outputs](./05-AWS-Setup-and-Outputs) | Switching to the AWS provider, output values |
| [06-Data-Blocks](./06-Data-Blocks) | Using data sources to look up an AMI |
| [07-Another-Provider](./07-Another-Provider) | Combining AWS + TLS providers, key pairs, security groups |
| [08-Modules](./08-Modules) | Refactoring the TLS key logic into a reusable module |
| [09-A-Web-Server](./09-A-Web-Server) | Full example: EC2 instance running nginx via `user_data` |

## Requirements

- [Terraform](https://developer.hashicorp.com/terraform/downloads) >= 1.x
- An AWS account with configured credentials (for folders 05 onward)
- Docker (for folders 01–02)

## Usage

Each folder is a self-contained Terraform configuration. To run any example:

```bash
cd 0X-folder-name
terraform init
terraform apply
```

Remember to destroy resources when done to avoid unnecessary cloud costs:

```bash
terraform destroy
```

## Notes

- AWS-related folders create real cloud resources (EC2 instances, security groups, key pairs). Always run `terraform destroy` after testing.
- Sensitive files (`.tfstate`, `.terraform/`, `*.pem`) are excluded via `.gitignore` and should never be committed.

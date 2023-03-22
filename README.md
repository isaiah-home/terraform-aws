# terraform-aws
Terraform for aws resources. This is to maintain resources within the "organize-me" space.

Some setup needs to happen in aws by an adminitrator prior this. For example, setting up the aws user, env paramiters, an s3 bucket for terraform. See the init repo.

# Terraform Init
The terraform state file location cannot use variables. The bucket location must be set when initializing the terraform. This bucket should exist prior to initializing.
```
terraform init -backend-config="bucket=organize-me.${DOMAIN}.terraform" -backend-config="region=${REGION}"
```

# AWS Services
 * Route 53 (DNS setup. Assumes the domain is managed in aws)
 * S3 (Bucket for backups)

## Notes
 * Uses variables defined in the ```env.sh``` script setup in the ```init``` repo.
 * Uses aws paramiters defined in the ```init``` repo.
 * Uses an S3 backet to save this terraform's state file. This bucket need to exist before executing the terraform.

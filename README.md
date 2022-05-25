# terraform-aws
Terraform for aws resources

# AWS Services
 * Route 53 (DNS setup. Assumes the domain is managed in aws)
 * S3
   - Bucket for backups
   - Bucket for nextcloud storage

## Notes
 * Uses variables defined in the ```env.sh``` script setup in the ```init``` repo.
 * Uses aws paramiters defined in the ```init``` repo.
 * Uses an S3 backet to save this terraform's state file. This bucket need to exist before executing the terraform.

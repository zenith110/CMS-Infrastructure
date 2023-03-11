variable "linode_api_token" {
    description = "linode token"
}
variable "linode_password" {
    description = "linode password"

variable "linode_region" {
    description = "Region that will be used"
    default = "us-east"
}
variable "cloudflare_zone_id" {
    description = "cloudflare zone id"
}
variable "cloudflare_domain_name" {
    description = "Which domain will the sub-domains live under"
}
variable "vm_label" {
    description = "Put the vm into a label to associate each one"
}
variable "vm_group" {}
variable "cloudflare_email" {
    description = "Email used to auth with Cloudflare"
}
variable "cloudflare_api_key" {
    description = "Cloudflare api key"
}
variable "aws_s3_bucket_name" {
    description = "Aws s3 bucket name"
}

variable "aws_s3_key" {
    description = "Key needed to use s3"
}
variable "aws_region" {
    description = "Region that the server will live in"
    default = "us-east-2"
}
variable "aws_access_key" {
    description = "Access key for IAM"
}
variable "aws_secret_key" {
    description = "Secret key for IAM"
}
variable "dynamob_table" {
    description = "Name of DynamoDB table"
}

variable "prod-backend" {
    description = "Domain for backend"
}
variable "kms_alias" {
    description = "What the key management system will be called"
}

variable "aws_iam_user_id" {
    description = "IAM user for CI/CD"
}
variable "linode_image" {
    description = "image for linode"
    default = "linode/ubuntu21.04"
}
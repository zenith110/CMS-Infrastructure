terraform{
    required_providers{
        linode = {
            source = "linode/linode"
            version = "~> 1.16.0"
        }
        cloudflare = {
        source = "cloudflare/cloudflare"
        version = "~> 3.0"
    }
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.0"
        }
    }
}
 backend "s3" {
   bucket = "bucket"
   key            = "state/terraform.tfstate"
   region         = "region"
   encrypt        = true
}
output ip_address{
    value = linode_instance.cms.ip_address
}

provider "linode" {
    token = var.linode_api_token
}
provider "aws"{
    region = var.aws_region
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
}
provider "cloudflare"{
    email = var.cloudflare_email
    api_key = var.cloudflare_api_key
}

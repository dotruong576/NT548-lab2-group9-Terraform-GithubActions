#create s3
resource "aws_s3_bucket" "mybucket" {
    bucket = "s3statebackend-group9-3183"
    force_destroy = true
    versioning {
      enabled = true
    }
    server_side_encryption_configuration {
      rule {
        apply_server_side_encryption_by_default {
          sse_algorithm = "AES256"
        }
      }
    }
    # checkov:skip=CKV2_AWS_62
    # checkov:skip=CKV_AWS_18
    # checkov:skip=CKV2_AWS_6
    # checkov:skip=CKV_AWS_144
    # checkov:skip=CKV_AWS_145
    # checkov:skip=CKV2_AWS_61

}
# terraform {
#     backend "s3" {
#     bucket = "s3statebackend-group9-3183"
#     key = "global/mystatefile/terraform.tfstate"
#     region = "us-east-1"
#     encrypt = true
#   }
# }
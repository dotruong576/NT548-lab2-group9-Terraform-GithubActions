#create s3
resource "aws_s3_bucket" "mybucket" {
    bucket = "s3statebackend-group9"
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

#create dynamodb
resource "aws_dynamodb_table" "statelock" {
    name = "state-lock"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
      name = "LockID"
      type = "S"
    }
    # checkov:skip=CKV_AWS_119
    # checkov:skip=CKV_AWS_79
}

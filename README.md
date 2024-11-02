# NT548-lab2-group9-Terraform-GithubActions
NT548-lab2-group9-Terraform-GithubActions

Members of group 9:
| MSSV | FullName | Email |
|-------------|-----------------------|---------------------------------|
| 21521023| Nguyễn Đức Trung Kiên | 21521023@gm.uit.edu.vn |
| 21522530 | Hoàng Tất Quý | 21522530@gm.uit.edu.vn |
| 21522604 | Phùng Nam Thanh | 21522604@gm.uit.edu.vn |
| 21522729 | Đỗ Xuân Trường | 21522729@gm.uit.edu.vn |

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which can cost money (AWS Elastic IP, for example). Run `terraform destroy` when you don't need these resources.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.46 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.46 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ../../ | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |
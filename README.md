<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_archive"></a> [archive](#requirement\_archive) | 2.7.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 6.0.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.7.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_archive"></a> [archive](#provider\_archive) | 2.7.1 |
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.0.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.7.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_event_rule.mq](https://registry.terraform.io/providers/hashicorp/aws/6.0.0/docs/resources/cloudwatch_event_rule) | resource |
| [aws_cloudwatch_event_target.mq](https://registry.terraform.io/providers/hashicorp/aws/6.0.0/docs/resources/cloudwatch_event_target) | resource |
| [aws_cloudwatch_log_group.lambda](https://registry.terraform.io/providers/hashicorp/aws/6.0.0/docs/resources/cloudwatch_log_group) | resource |
| [aws_iam_policy_attachment.logs](https://registry.terraform.io/providers/hashicorp/aws/6.0.0/docs/resources/iam_policy_attachment) | resource |
| [aws_iam_role.lambda](https://registry.terraform.io/providers/hashicorp/aws/6.0.0/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.mq](https://registry.terraform.io/providers/hashicorp/aws/6.0.0/docs/resources/iam_role_policy) | resource |
| [aws_kms_alias.cw](https://registry.terraform.io/providers/hashicorp/aws/6.0.0/docs/resources/kms_alias) | resource |
| [aws_kms_alias.secrets](https://registry.terraform.io/providers/hashicorp/aws/6.0.0/docs/resources/kms_alias) | resource |
| [aws_kms_key.cw](https://registry.terraform.io/providers/hashicorp/aws/6.0.0/docs/resources/kms_key) | resource |
| [aws_kms_key.secrets](https://registry.terraform.io/providers/hashicorp/aws/6.0.0/docs/resources/kms_key) | resource |
| [aws_lambda_function.func](https://registry.terraform.io/providers/hashicorp/aws/6.0.0/docs/resources/lambda_function) | resource |
| [aws_lambda_permission.mq](https://registry.terraform.io/providers/hashicorp/aws/6.0.0/docs/resources/lambda_permission) | resource |
| [aws_mq_broker.mq](https://registry.terraform.io/providers/hashicorp/aws/6.0.0/docs/resources/mq_broker) | resource |
| [aws_secretsmanager_secret.mq](https://registry.terraform.io/providers/hashicorp/aws/6.0.0/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret_version.mq](https://registry.terraform.io/providers/hashicorp/aws/6.0.0/docs/resources/secretsmanager_secret_version) | resource |
| [aws_security_group.mq](https://registry.terraform.io/providers/hashicorp/aws/6.0.0/docs/resources/security_group) | resource |
| [aws_subnet.private](https://registry.terraform.io/providers/hashicorp/aws/6.0.0/docs/resources/subnet) | resource |
| [aws_vpc.main](https://registry.terraform.io/providers/hashicorp/aws/6.0.0/docs/resources/vpc) | resource |
| [random_password.mq](https://registry.terraform.io/providers/hashicorp/random/3.7.2/docs/resources/password) | resource |
| [archive_file.lambda](https://registry.terraform.io/providers/hashicorp/archive/2.7.1/docs/data-sources/file) | data source |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/6.0.0/docs/data-sources/caller_identity) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/6.0.0/docs/data-sources/region) | data source |

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->
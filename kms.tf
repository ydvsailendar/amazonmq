resource "aws_kms_key" "secrets" {
  description             = "KMS key for Secrets Manager"
  deletion_window_in_days = 7
  policy = jsonencode({
    Statement = [
      {
        Action = "kms:*"
        Effect = "Allow"
        Principal = {
          AWS = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"
        }
        Resource = "*"
        Sid      = "AllowAccountFullAccess"
      },
      {
        Action = [
          "kms:Encrypt",
          "kms:Decrypt",
          "kms:GenerateDataKey*",
          "kms:DescribeKey"
        ]
        Effect = "Allow"
        Principal = {
          Service = "secretsmanager.amazonaws.com"
        }
        Resource = "*"
        Sid      = "AllowSecretsManagerAccess"
      }
    ],
    Version = "2012-10-17"
  })
}

resource "aws_kms_alias" "secrets" {
  name          = "alias/secrets"
  target_key_id = aws_kms_key.secrets.key_id
}

resource "aws_kms_key" "cw" {
  description             = "KMS key for encrypting CloudWatch Logs for Container Insights"
  deletion_window_in_days = 7

  policy = jsonencode({
    Statement = [
      {
        Action = [
          "kms:*"
        ],
        Effect = "Allow",
        Principal = {
          AWS = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"
        },
        Sid      = "Allow administration of the key",
        Resource = "*"
      },
      {
        Action = [
          "kms:Encrypt",
          "kms:Decrypt",
          "kms:GenerateDataKey*",
          "kms:ReEncrypt*"
        ],
        Effect = "Allow",
        Principal = {
          Service = "logs.${data.aws_region.current.region}.amazonaws.com"
        },
        Sid      = "Allow CloudWatch Logs to use the key",
        Resource = "*"
      }
    ],
    Version = "2012-10-17"
  })
}

resource "aws_kms_alias" "cw" {
  name          = "alias/cw"
  target_key_id = aws_kms_key.cw.key_id
}

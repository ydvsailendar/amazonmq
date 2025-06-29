resource "aws_secretsmanager_secret" "mq" {
  name        = "/password/amq"
  description = "mq passowrd"
  kms_key_id  = aws_kms_key.secrets.arn
}

resource "aws_secretsmanager_secret_version" "mq" {
  secret_id     = aws_secretsmanager_secret.mq.id
  secret_string = random_password.mq.result
}

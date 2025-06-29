resource "aws_cloudwatch_log_group" "lambda" {
  name              = "/aws/lambda/mq-log-manager"
  retention_in_days = 30
}

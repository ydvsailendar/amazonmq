resource "aws_lambda_function" "func" {
  function_name    = "mq-log-manager"
  role             = aws_iam_role.lambda.arn
  handler          = "mq.lambda_handler"
  runtime          = "python3.11"
  filename         = data.archive_file.lambda.output_path
  source_code_hash = data.archive_file.lambda.output_base64sha256
  timeout          = 40
  depends_on       = [aws_cloudwatch_log_group.lambda]
  logging_config {
    log_format = "JSON"
    log_group  = aws_cloudwatch_log_group.lambda.name
  }
  tracing_config {
    mode = "Active"
  }
}

resource "aws_cloudwatch_event_rule" "mq" {
  name = "mq-broker-events-rule"
  event_pattern = jsonencode({
    "source" : ["aws.cloudtrail"],
    "detail-type" : ["AWS API Call via CloudTrail"],
    "detail" : {
      "eventSource" : ["amazonmq.amazonaws.com"]
    }
  })
}

resource "aws_cloudwatch_event_target" "mq" {
  rule      = aws_cloudwatch_event_rule.mq.name
  target_id = "mqBrokerLambda"
  arn       = aws_lambda_function.func.arn
}

resource "aws_lambda_permission" "mq" {
  statement_id  = "AllowExecutionFromEventBridge"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.func.function_name
  principal     = "events.amazonaws.com"
  source_arn    = aws_cloudwatch_event_rule.mq.arn
}

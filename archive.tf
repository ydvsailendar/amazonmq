data "archive_file" "lambda" {
  type        = "zip"
  source_file = "${path.module}/mq.py"
  output_path = "${path.module}/mq.zip"
}

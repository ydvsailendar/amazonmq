resource "aws_mq_broker" "mq" {
  broker_name         = "keystroke"
  engine_type         = "ActiveMQ"
  engine_version      = "5.18"
  host_instance_type  = "mq.t3.micro"
  publicly_accessible = false
  user {
    username = "admin"
    password = random_password.mq.result
  }
  logs {
    general = true
    audit   = true
  }
  auto_minor_version_upgrade = true
  security_groups            = [aws_security_group.mq.id]
  subnet_ids                 = [aws_subnet.private.id]
  depends_on                 = [aws_lambda_permission.mq]
}

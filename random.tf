resource "random_password" "mq" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_+[]{}<>?"
}

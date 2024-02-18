resource "random_password" "password" {
  length           = 16
  special          = true
  min_lower        = 4
  min_upper        = 4
  min_special      = 4
  min_numeric      = 4
  override_special = "!#$%&*()-_=+[]{}<>:?"
}


resource "local_file" "abcd" {
  content  = "abc!"
  filename = "${path.module}/abc.txt"
}

resource "local_file" "def" {
  content  = "def!"
  filename = "${path.module}/def.txt"
}

terraform {
  required_version = ">= 1.0.0"
}

resource "local_file" "abc" {
  content = "123!"
  filename = "${path.module}/abc.txt"
}

terraform {
  required_version = ">= 1.0.0"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = ">= 2.0.0"
    }
  }
}
resource "local_file" "abcd" {
  content  = "abc!"
  filename = "${path.module}/abc.txt"
}
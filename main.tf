resource "local_file" "my_pet" {
  filename = var.filename
  content  = var.content
}
